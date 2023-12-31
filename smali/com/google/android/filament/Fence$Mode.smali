.class public final enum Lcom/google/android/filament/Fence$Mode;
.super Ljava/lang/Enum;
.source "Fence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Fence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Fence$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Fence$Mode;

.field public static final enum DONT_FLUSH:Lcom/google/android/filament/Fence$Mode;

.field public static final enum FLUSH:Lcom/google/android/filament/Fence$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    new-instance v0, Lcom/google/android/filament/Fence$Mode;

    const/4 v1, 0x0

    const-string v2, "FLUSH"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/Fence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Fence$Mode;->FLUSH:Lcom/google/android/filament/Fence$Mode;

    .line 31
    new-instance v0, Lcom/google/android/filament/Fence$Mode;

    const/4 v2, 0x1

    const-string v3, "DONT_FLUSH"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/Fence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Fence$Mode;->DONT_FLUSH:Lcom/google/android/filament/Fence$Mode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/filament/Fence$Mode;

    .line 29
    sget-object v3, Lcom/google/android/filament/Fence$Mode;->FLUSH:Lcom/google/android/filament/Fence$Mode;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/android/filament/Fence$Mode;->DONT_FLUSH:Lcom/google/android/filament/Fence$Mode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/filament/Fence$Mode;->$VALUES:[Lcom/google/android/filament/Fence$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Fence$Mode;
    .locals 1

    .line 29
    const-class v0, Lcom/google/android/filament/Fence$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Fence$Mode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Fence$Mode;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/filament/Fence$Mode;->$VALUES:[Lcom/google/android/filament/Fence$Mode;

    invoke-virtual {v0}, [Lcom/google/android/filament/Fence$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Fence$Mode;

    return-object v0
.end method
