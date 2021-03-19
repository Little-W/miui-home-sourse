.class final enum Lcom/mi/google/gson/LongSerializationPolicy$2;
.super Lcom/mi/google/gson/LongSerializationPolicy;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/google/gson/LongSerializationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/mi/google/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;ILcom/mi/google/gson/LongSerializationPolicy$1;)V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;)Lcom/mi/google/gson/JsonElement;
    .locals 1

    .line 47
    new-instance v0, Lcom/mi/google/gson/JsonPrimitive;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mi/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
