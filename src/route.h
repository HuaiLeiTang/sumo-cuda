#pragma once
#include <string>
#include <vector>
#include "edge.h"
using namespace std;
class Route
{
	public:
		/**
		Constructor for Route object
		@param uid	The name or unique identifier of this route
		*/
		Route(string uid);

		/**
		Get the next edge in order on this Route
		@param edge	The last edge relative to the one requested
		*/
		Edge* getNextEdge( Edge* edge );

		/**
		Retrieve the first edge on the Route
		*/
		Edge* begin();

		/**
		Retrieve the last edge on the Route
		*/
		Edge* end();

		/**
		Add an edge to the end of the Route
		@param edge	The edge to be added to the Route
		*/
		void addEdge( Edge* edge );

		/**
		Destructor for the Route object
		*/
		~Route(void);
	private:
		//Name/Unique Identifier
		string _uid;

		//Our list of edges
		vector<Edge*> _edges;
};

