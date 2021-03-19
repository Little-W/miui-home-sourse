.class public final enum Lcom/google/android/filament/Fence$FenceStatus;
.super Ljava/lang/Enum;
.source "Fence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Fence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FenceStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Fence$FenceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Fence$FenceStatus;

.field public static final enum CONDITION_SATISFIED:Lcom/google/android/filament/Fence$FenceStatus;

.field public static final enum ERROR:Lcom/google/android/filament/Fence$FenceStatus;

.field public static final enum TIMEOUT_EXPIRED:Lcom/google/android/filament/Fence$FenceStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Lcom/google/android/filament/Fence$FenceStatus;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Fence$FenceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Fence$FenceStatus;->ERROR:Lcom/google/android/filament/Fence$FenceStatus;

    .line 36
    new-instance v0, Lcom/google/android/filament/Fence$FenceStatus;

    const-string v1, "CONDITION_SATISFIED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/Fence$FenceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Fence$FenceStatus;->CONDITION_SATISFIED:Lcom/google/android/filament/Fence$FenceStatus;

    .line 37
    new-instance v0, Lcom/google/android/filament/Fence$FenceStatus;

    const-string v1, "TIMEOUT_EXPIRED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/filament/Fence$FenceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Fence$FenceStatus;->TIMEOUT_EXPIRED:Lcom/google/android/filament/Fence$FenceStatus;

    const/4 v0, 0x3

    .line 34
    new-array v0, v0, [Lcom/google/android/filament/Fence$FenceStatus;

    sget-object v1, Lcom/google/android/filament/Fence$FenceStatus;->ERROR:Lcom/google/android/filament/Fence$FenceStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Fence$FenceStatus;->CONDITION_SATISFIED:Lcom/google/android/filament/Fence$FenceStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/Fence$FenceStatus;->TIMEOUT_EXPIRED:Lcom/google/android/filament/Fence$FenceStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/filament/Fence$FenceStatus;->$VALUES:[Lcom/google/android/filament/Fence$FenceStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Fence$FenceStatus;
    .locals 1

    .line 34
    const-class v0, Lcom/google/android/filament/Fence$FenceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Fence$FenceStatus;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Fence$FenceStatus;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/android/filament/Fence$FenceStatus;->$VALUES:[Lcom/google/android/filament/Fence$FenceStatus;

    invoke-virtual {v0}, [Lcom/google/android/filament/Fence$FenceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Fence$FenceStatus;

    return-object v0
.end method
