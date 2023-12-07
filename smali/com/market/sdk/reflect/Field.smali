.class public Lcom/market/sdk/reflect/Field;
.super Ljava/lang/Object;


# static fields
.field public static final BOOLEAN_SIGNATURE_PRIMITIVE:Ljava/lang/String; = "Z"

.field public static final BYTE_SIGNATURE_PRIMITIVE:Ljava/lang/String; = "B"

.field public static final CHAR_SIGNATURE_PRIMITIVE:Ljava/lang/String; = "C"

.field public static final DOUBLE_SIGNATURE_PRIMITIVE:Ljava/lang/String; = "D"

.field public static final FLOAT_SIGNATURE_PRIMITIVE:Ljava/lang/String; = "F"

.field public static final INT_SIGNATURE_PRIMITIVE:Ljava/lang/String; = "I"

.field public static final LONG_SIGNATURE_PRIMITIVE:Ljava/lang/String; = "J"

.field public static final SHORT_SIGNATURE_PRIMITIVE:Ljava/lang/String; = "S"

.field public static final VOID_SIGNATURE_PRIMITIVE:Ljava/lang/String; = "V"


# instance fields
.field private final mField:Ljava/lang/reflect/Field;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/market/sdk/reflect/Field;->mField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lcom/market/sdk/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/market/sdk/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/sdk/reflect/NoSuchFieldException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/market/sdk/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/sdk/reflect/NoSuchFieldException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    new-instance v0, Lcom/market/sdk/reflect/Field;

    invoke-direct {v0, p2}, Lcom/market/sdk/reflect/Field;-><init>(Ljava/lang/reflect/Field;)V
    :try_end_0
    .catch Lcom/market/sdk/reflect/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    new-instance p1, Lcom/market/sdk/reflect/Field;

    invoke-direct {p1, p0}, Lcom/market/sdk/reflect/Field;-><init>(Ljava/lang/reflect/Field;)V
    :try_end_1
    .catch Lcom/market/sdk/reflect/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/market/sdk/reflect/NoSuchFieldException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/market/sdk/reflect/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/sdk/reflect/NoSuchFieldException;,
            Lcom/market/sdk/reflect/NoSuchClassException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/market/sdk/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/market/sdk/reflect/NoSuchClassException;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/market/sdk/reflect/NoSuchClassException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public getInt(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/market/sdk/reflect/Field;->mField:Ljava/lang/reflect/Field;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p0, p0, Lcom/market/sdk/reflect/Field;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
