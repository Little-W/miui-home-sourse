.class public abstract enum Lcom/mi/google/gson/LongSerializationPolicy;
.super Ljava/lang/Enum;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mi/google/gson/LongSerializationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/google/gson/LongSerializationPolicy;

.field public static final enum DEFAULT:Lcom/mi/google/gson/LongSerializationPolicy;

.field public static final enum STRING:Lcom/mi/google/gson/LongSerializationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Lcom/mi/google/gson/LongSerializationPolicy$1;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/mi/google/gson/LongSerializationPolicy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/mi/google/gson/LongSerializationPolicy;

    .line 45
    new-instance v0, Lcom/mi/google/gson/LongSerializationPolicy$2;

    const/4 v2, 0x1

    const-string v3, "STRING"

    invoke-direct {v0, v3, v2}, Lcom/mi/google/gson/LongSerializationPolicy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/google/gson/LongSerializationPolicy;->STRING:Lcom/mi/google/gson/LongSerializationPolicy;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mi/google/gson/LongSerializationPolicy;

    .line 27
    sget-object v3, Lcom/mi/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/mi/google/gson/LongSerializationPolicy;

    aput-object v3, v0, v1

    sget-object v1, Lcom/mi/google/gson/LongSerializationPolicy;->STRING:Lcom/mi/google/gson/LongSerializationPolicy;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mi/google/gson/LongSerializationPolicy;->$VALUES:[Lcom/mi/google/gson/LongSerializationPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/mi/google/gson/LongSerializationPolicy$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/mi/google/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mi/google/gson/LongSerializationPolicy;
    .locals 1

    .line 27
    const-class v0, Lcom/mi/google/gson/LongSerializationPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mi/google/gson/LongSerializationPolicy;

    return-object p0
.end method

.method public static values()[Lcom/mi/google/gson/LongSerializationPolicy;
    .locals 1

    .line 27
    sget-object v0, Lcom/mi/google/gson/LongSerializationPolicy;->$VALUES:[Lcom/mi/google/gson/LongSerializationPolicy;

    invoke-virtual {v0}, [Lcom/mi/google/gson/LongSerializationPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/google/gson/LongSerializationPolicy;

    return-object v0
.end method


# virtual methods
.method public abstract serialize(Ljava/lang/Long;)Lcom/mi/google/gson/JsonElement;
.end method
