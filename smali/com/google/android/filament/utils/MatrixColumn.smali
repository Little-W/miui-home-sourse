.class public final enum Lcom/google/android/filament/utils/MatrixColumn;
.super Ljava/lang/Enum;
.source "Matrix.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/utils/MatrixColumn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/utils/MatrixColumn;

.field public static final enum W:Lcom/google/android/filament/utils/MatrixColumn;

.field public static final enum X:Lcom/google/android/filament/utils/MatrixColumn;

.field public static final enum Y:Lcom/google/android/filament/utils/MatrixColumn;

.field public static final enum Z:Lcom/google/android/filament/utils/MatrixColumn;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/filament/utils/MatrixColumn;

    new-instance v1, Lcom/google/android/filament/utils/MatrixColumn;

    const/4 v2, 0x0

    const-string v3, "X"

    invoke-direct {v1, v3, v2}, Lcom/google/android/filament/utils/MatrixColumn;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/utils/MatrixColumn;->X:Lcom/google/android/filament/utils/MatrixColumn;

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/filament/utils/MatrixColumn;

    const/4 v2, 0x1

    const-string v3, "Y"

    invoke-direct {v1, v3, v2}, Lcom/google/android/filament/utils/MatrixColumn;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/utils/MatrixColumn;->Y:Lcom/google/android/filament/utils/MatrixColumn;

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/filament/utils/MatrixColumn;

    const/4 v2, 0x2

    const-string v3, "Z"

    invoke-direct {v1, v3, v2}, Lcom/google/android/filament/utils/MatrixColumn;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/utils/MatrixColumn;->Z:Lcom/google/android/filament/utils/MatrixColumn;

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/filament/utils/MatrixColumn;

    const/4 v2, 0x3

    const-string v3, "W"

    invoke-direct {v1, v3, v2}, Lcom/google/android/filament/utils/MatrixColumn;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/utils/MatrixColumn;->W:Lcom/google/android/filament/utils/MatrixColumn;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/filament/utils/MatrixColumn;->$VALUES:[Lcom/google/android/filament/utils/MatrixColumn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/utils/MatrixColumn;
    .locals 1

    const-class v0, Lcom/google/android/filament/utils/MatrixColumn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/utils/MatrixColumn;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/utils/MatrixColumn;
    .locals 1

    sget-object v0, Lcom/google/android/filament/utils/MatrixColumn;->$VALUES:[Lcom/google/android/filament/utils/MatrixColumn;

    invoke-virtual {v0}, [Lcom/google/android/filament/utils/MatrixColumn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/utils/MatrixColumn;

    return-object v0
.end method
