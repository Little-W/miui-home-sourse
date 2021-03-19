.class public Lcom/airbnb/lottie/TextDelegate;
.super Ljava/lang/Object;
.source "TextDelegate.java"


# instance fields
.field private cacheText:Z

.field private final stringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method


# virtual methods
.method public final getTextInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 84
    iget-boolean v0, p0, Lcom/airbnb/lottie/TextDelegate;->cacheText:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/TextDelegate;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-boolean v1, p0, Lcom/airbnb/lottie/TextDelegate;->cacheText:Z

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/airbnb/lottie/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
