.class public final enum Ljava8/util/stream/Collector$Characteristics;
.super Ljava/lang/Enum;
.source "Collector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Characteristics"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava8/util/stream/Collector$Characteristics;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava8/util/stream/Collector$Characteristics;

.field public static final enum CONCURRENT:Ljava8/util/stream/Collector$Characteristics;

.field public static final enum IDENTITY_FINISH:Ljava8/util/stream/Collector$Characteristics;

.field public static final enum UNORDERED:Ljava8/util/stream/Collector$Characteristics;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 257
    new-instance v0, Ljava8/util/stream/Collector$Characteristics;

    const-string v1, "CONCURRENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava8/util/stream/Collector$Characteristics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/util/stream/Collector$Characteristics;->CONCURRENT:Ljava8/util/stream/Collector$Characteristics;

    .line 264
    new-instance v0, Ljava8/util/stream/Collector$Characteristics;

    const-string v1, "UNORDERED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava8/util/stream/Collector$Characteristics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/util/stream/Collector$Characteristics;->UNORDERED:Ljava8/util/stream/Collector$Characteristics;

    .line 271
    new-instance v0, Ljava8/util/stream/Collector$Characteristics;

    const-string v1, "IDENTITY_FINISH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljava8/util/stream/Collector$Characteristics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava8/util/stream/Collector$Characteristics;

    const/4 v0, 0x3

    .line 246
    new-array v0, v0, [Ljava8/util/stream/Collector$Characteristics;

    sget-object v1, Ljava8/util/stream/Collector$Characteristics;->CONCURRENT:Ljava8/util/stream/Collector$Characteristics;

    aput-object v1, v0, v2

    sget-object v1, Ljava8/util/stream/Collector$Characteristics;->UNORDERED:Ljava8/util/stream/Collector$Characteristics;

    aput-object v1, v0, v3

    sget-object v1, Ljava8/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava8/util/stream/Collector$Characteristics;

    aput-object v1, v0, v4

    sput-object v0, Ljava8/util/stream/Collector$Characteristics;->$VALUES:[Ljava8/util/stream/Collector$Characteristics;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava8/util/stream/Collector$Characteristics;
    .locals 1

    .line 246
    const-class v0, Ljava8/util/stream/Collector$Characteristics;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Collector$Characteristics;

    return-object p0
.end method

.method public static values()[Ljava8/util/stream/Collector$Characteristics;
    .locals 1

    .line 246
    sget-object v0, Ljava8/util/stream/Collector$Characteristics;->$VALUES:[Ljava8/util/stream/Collector$Characteristics;

    invoke-virtual {v0}, [Ljava8/util/stream/Collector$Characteristics;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava8/util/stream/Collector$Characteristics;

    return-object v0
.end method
