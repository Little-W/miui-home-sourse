.class final Lcom/squareup/moshi/ClassFactory$3;
.super Lcom/squareup/moshi/ClassFactory;
.source "ClassFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/moshi/ClassFactory;->get(Ljava/lang/Class;)Lcom/squareup/moshi/ClassFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/moshi/ClassFactory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$constructorId:I

.field final synthetic val$newInstance:Ljava/lang/reflect/Method;

.field final synthetic val$rawType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;I)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/squareup/moshi/ClassFactory$3;->val$newInstance:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/squareup/moshi/ClassFactory$3;->val$rawType:Ljava/lang/Class;

    iput p3, p0, Lcom/squareup/moshi/ClassFactory$3;->val$constructorId:I

    invoke-direct {p0}, Lcom/squareup/moshi/ClassFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/squareup/moshi/ClassFactory$3;->val$newInstance:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/squareup/moshi/ClassFactory$3;->val$rawType:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget p0, p0, Lcom/squareup/moshi/ClassFactory$3;->val$constructorId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/squareup/moshi/ClassFactory$3;->val$rawType:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
