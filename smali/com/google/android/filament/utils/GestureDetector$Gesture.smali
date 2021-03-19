.class final enum Lcom/google/android/filament/utils/GestureDetector$Gesture;
.super Ljava/lang/Enum;
.source "GestureDetector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Gesture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/utils/GestureDetector$Gesture;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/utils/GestureDetector$Gesture;

.field public static final enum NONE:Lcom/google/android/filament/utils/GestureDetector$Gesture;

.field public static final enum ORBIT:Lcom/google/android/filament/utils/GestureDetector$Gesture;

.field public static final enum PAN:Lcom/google/android/filament/utils/GestureDetector$Gesture;

.field public static final enum ZOOM:Lcom/google/android/filament/utils/GestureDetector$Gesture;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/filament/utils/GestureDetector$Gesture;

    new-instance v1, Lcom/google/android/filament/utils/GestureDetector$Gesture;

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/filament/utils/GestureDetector$Gesture;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/utils/GestureDetector$Gesture;->NONE:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/android/filament/utils/GestureDetector$Gesture;

    const-string v2, "ORBIT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/filament/utils/GestureDetector$Gesture;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/utils/GestureDetector$Gesture;->ORBIT:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/android/filament/utils/GestureDetector$Gesture;

    const-string v2, "PAN"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/google/android/filament/utils/GestureDetector$Gesture;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/utils/GestureDetector$Gesture;->PAN:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/android/filament/utils/GestureDetector$Gesture;

    const-string v2, "ZOOM"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/google/android/filament/utils/GestureDetector$Gesture;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/utils/GestureDetector$Gesture;->ZOOM:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/filament/utils/GestureDetector$Gesture;->$VALUES:[Lcom/google/android/filament/utils/GestureDetector$Gesture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/utils/GestureDetector$Gesture;
    .locals 1

    const-class v0, Lcom/google/android/filament/utils/GestureDetector$Gesture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/utils/GestureDetector$Gesture;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/utils/GestureDetector$Gesture;
    .locals 1

    sget-object v0, Lcom/google/android/filament/utils/GestureDetector$Gesture;->$VALUES:[Lcom/google/android/filament/utils/GestureDetector$Gesture;

    invoke-virtual {v0}, [Lcom/google/android/filament/utils/GestureDetector$Gesture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/utils/GestureDetector$Gesture;

    return-object v0
.end method
