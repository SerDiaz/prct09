require "./prct09/matriz.rb"

module Prct09
    class Matriz_densa < Matriz_densa
      def initialize(n, m)
	super
	
	@contenido = Array.new(@N,0)
      i = 0
      while i < @N
        @contenido[i] = Array.new(@M,0)
        i += 1  
      end
    end
      
    def get(i, j)
      if( i < 0 or i >=@N or j < 0 or j >= @M)
        return nil
      end

      @contenido[i][j]
    end
    
    def null_percent
      total = @N*@M
      no_nulos = 0
      
      i = 0
      while(i < @N)
        j = 0
        while(j < @M)
          if(@contenido[i][j] != @contenido[i][j].class.null)
            no_nulos += 1
          end
          j += 1
        end
        i += 1
      end
      
      nulos = total - no_nulos
      nulos.to_f/total.to_f
    end