.class public final enum Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;
.super Ljava/lang/Enum;
.source "Protobuf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/encoders/proto/Protobuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntEncoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

.field public static final enum DEFAULT:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

.field public static final enum FIXED:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

.field public static final enum SIGNED:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 32
    new-instance v0, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->DEFAULT:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    .line 33
    new-instance v0, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    const-string v1, "SIGNED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->SIGNED:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    .line 34
    new-instance v0, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    const-string v1, "FIXED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->FIXED:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    const/4 v0, 0x3

    .line 31
    new-array v0, v0, [Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    sget-object v1, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->DEFAULT:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->SIGNED:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->FIXED:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->$VALUES:[Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;
    .locals 1

    .line 31
    const-class v0, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;
    .locals 1

    .line 31
    sget-object v0, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->$VALUES:[Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    invoke-virtual {v0}, [Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    return-object v0
.end method
