.class public interface abstract Lcom/mi/globallauncher/config/CommercialCloudConfigApi;
.super Ljava/lang/Object;


# virtual methods
.method public abstract requestCloudConfig(Ljava/util/Map;)Lio/reactivex/Observable;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/mi/globallauncher/config/CommercialConfigResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "setting/v1/config"
    .end annotation
.end method
