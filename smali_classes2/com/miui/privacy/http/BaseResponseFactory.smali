.class public Lcom/miui/privacy/http/BaseResponseFactory;
.super Lretrofit2/Converter$Factory;
.source "BaseResponseFactory.java"


# instance fields
.field private mGson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/miui/privacy/http/BaseResponseFactory;->mGson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .line 24
    new-instance p2, Lcom/miui/privacy/http/BaseResponseBodyConverter;

    iget-object p0, p0, Lcom/miui/privacy/http/BaseResponseFactory;->mGson:Lcom/google/gson/Gson;

    invoke-direct {p2, p0, p1}, Lcom/miui/privacy/http/BaseResponseBodyConverter;-><init>(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;)V

    return-object p2
.end method
