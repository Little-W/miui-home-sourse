.class public final enum Lcom/google/android/filament/RenderableManager$PrimitiveType;
.super Ljava/lang/Enum;
.source "RenderableManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/RenderableManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrimitiveType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/RenderableManager$PrimitiveType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/RenderableManager$PrimitiveType;

.field public static final enum LINES:Lcom/google/android/filament/RenderableManager$PrimitiveType;

.field public static final enum POINTS:Lcom/google/android/filament/RenderableManager$PrimitiveType;

.field public static final enum TRIANGLES:Lcom/google/android/filament/RenderableManager$PrimitiveType;


# instance fields
.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 93
    new-instance v0, Lcom/google/android/filament/RenderableManager$PrimitiveType;

    const-string v1, "POINTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/filament/RenderableManager$PrimitiveType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/filament/RenderableManager$PrimitiveType;->POINTS:Lcom/google/android/filament/RenderableManager$PrimitiveType;

    .line 94
    new-instance v0, Lcom/google/android/filament/RenderableManager$PrimitiveType;

    const-string v1, "LINES"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/filament/RenderableManager$PrimitiveType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/filament/RenderableManager$PrimitiveType;->LINES:Lcom/google/android/filament/RenderableManager$PrimitiveType;

    .line 95
    new-instance v0, Lcom/google/android/filament/RenderableManager$PrimitiveType;

    const-string v1, "TRIANGLES"

    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/filament/RenderableManager$PrimitiveType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/filament/RenderableManager$PrimitiveType;->TRIANGLES:Lcom/google/android/filament/RenderableManager$PrimitiveType;

    const/4 v0, 0x3

    .line 92
    new-array v0, v0, [Lcom/google/android/filament/RenderableManager$PrimitiveType;

    sget-object v1, Lcom/google/android/filament/RenderableManager$PrimitiveType;->POINTS:Lcom/google/android/filament/RenderableManager$PrimitiveType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/RenderableManager$PrimitiveType;->LINES:Lcom/google/android/filament/RenderableManager$PrimitiveType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/RenderableManager$PrimitiveType;->TRIANGLES:Lcom/google/android/filament/RenderableManager$PrimitiveType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/filament/RenderableManager$PrimitiveType;->$VALUES:[Lcom/google/android/filament/RenderableManager$PrimitiveType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/filament/RenderableManager$PrimitiveType;->mType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/RenderableManager$PrimitiveType;
    .locals 1

    .line 92
    const-class v0, Lcom/google/android/filament/RenderableManager$PrimitiveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/RenderableManager$PrimitiveType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/RenderableManager$PrimitiveType;
    .locals 1

    .line 92
    sget-object v0, Lcom/google/android/filament/RenderableManager$PrimitiveType;->$VALUES:[Lcom/google/android/filament/RenderableManager$PrimitiveType;

    invoke-virtual {v0}, [Lcom/google/android/filament/RenderableManager$PrimitiveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/RenderableManager$PrimitiveType;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/google/android/filament/RenderableManager$PrimitiveType;->mType:I

    return v0
.end method
