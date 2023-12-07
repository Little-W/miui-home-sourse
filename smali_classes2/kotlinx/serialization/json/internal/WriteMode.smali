.class public final enum Lkotlinx/serialization/json/internal/WriteMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlinx/serialization/json/internal/WriteMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlinx/serialization/json/internal/WriteMode;

.field public static final enum LIST:Lkotlinx/serialization/json/internal/WriteMode;

.field public static final enum MAP:Lkotlinx/serialization/json/internal/WriteMode;

.field public static final enum OBJ:Lkotlinx/serialization/json/internal/WriteMode;

.field public static final enum POLY_OBJ:Lkotlinx/serialization/json/internal/WriteMode;


# instance fields
.field public final begin:C

.field public final beginTc:B

.field public final end:C

.field public final endTc:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/serialization/json/internal/WriteMode;

    new-instance v1, Lkotlinx/serialization/json/internal/WriteMode;

    const/16 v2, 0x7d

    const/16 v3, 0x7b

    const/4 v4, 0x0

    const-string v5, "OBJ"

    invoke-direct {v1, v5, v4, v3, v2}, Lkotlinx/serialization/json/internal/WriteMode;-><init>(Ljava/lang/String;ICC)V

    sput-object v1, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    aput-object v1, v0, v4

    new-instance v1, Lkotlinx/serialization/json/internal/WriteMode;

    const/16 v4, 0x5d

    const/16 v5, 0x5b

    const/4 v6, 0x1

    const-string v7, "LIST"

    invoke-direct {v1, v7, v6, v5, v4}, Lkotlinx/serialization/json/internal/WriteMode;-><init>(Ljava/lang/String;ICC)V

    sput-object v1, Lkotlinx/serialization/json/internal/WriteMode;->LIST:Lkotlinx/serialization/json/internal/WriteMode;

    aput-object v1, v0, v6

    new-instance v1, Lkotlinx/serialization/json/internal/WriteMode;

    const/4 v6, 0x2

    const-string v7, "MAP"

    invoke-direct {v1, v7, v6, v3, v2}, Lkotlinx/serialization/json/internal/WriteMode;-><init>(Ljava/lang/String;ICC)V

    sput-object v1, Lkotlinx/serialization/json/internal/WriteMode;->MAP:Lkotlinx/serialization/json/internal/WriteMode;

    aput-object v1, v0, v6

    new-instance v1, Lkotlinx/serialization/json/internal/WriteMode;

    const/4 v2, 0x3

    const-string v3, "POLY_OBJ"

    invoke-direct {v1, v3, v2, v5, v4}, Lkotlinx/serialization/json/internal/WriteMode;-><init>(Ljava/lang/String;ICC)V

    sput-object v1, Lkotlinx/serialization/json/internal/WriteMode;->POLY_OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    aput-object v1, v0, v2

    sput-object v0, Lkotlinx/serialization/json/internal/WriteMode;->$VALUES:[Lkotlinx/serialization/json/internal/WriteMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ICC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CC)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-char p3, p0, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    iput-char p4, p0, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    iget-char p1, p0, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    invoke-static {p1}, Lkotlinx/serialization/json/internal/JsonReaderKt;->charToTokenClass(C)B

    move-result p1

    iput-byte p1, p0, Lkotlinx/serialization/json/internal/WriteMode;->beginTc:B

    iget-char p1, p0, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    invoke-static {p1}, Lkotlinx/serialization/json/internal/JsonReaderKt;->charToTokenClass(C)B

    move-result p1

    iput-byte p1, p0, Lkotlinx/serialization/json/internal/WriteMode;->endTc:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/serialization/json/internal/WriteMode;
    .locals 1

    const-class v0, Lkotlinx/serialization/json/internal/WriteMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/internal/WriteMode;

    return-object p0
.end method

.method public static values()[Lkotlinx/serialization/json/internal/WriteMode;
    .locals 1

    sget-object v0, Lkotlinx/serialization/json/internal/WriteMode;->$VALUES:[Lkotlinx/serialization/json/internal/WriteMode;

    invoke-virtual {v0}, [Lkotlinx/serialization/json/internal/WriteMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/serialization/json/internal/WriteMode;

    return-object v0
.end method
