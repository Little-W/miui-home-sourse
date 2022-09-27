.class public final enum Lcom/google/android/filament/Camera$Projection;
.super Ljava/lang/Enum;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Projection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Camera$Projection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Camera$Projection;

.field public static final enum ORTHO:Lcom/google/android/filament/Camera$Projection;

.field public static final enum PERSPECTIVE:Lcom/google/android/filament/Camera$Projection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 133
    new-instance v0, Lcom/google/android/filament/Camera$Projection;

    const-string v1, "PERSPECTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Camera$Projection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Camera$Projection;->PERSPECTIVE:Lcom/google/android/filament/Camera$Projection;

    .line 135
    new-instance v0, Lcom/google/android/filament/Camera$Projection;

    const-string v1, "ORTHO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/Camera$Projection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Camera$Projection;->ORTHO:Lcom/google/android/filament/Camera$Projection;

    const/4 v0, 0x2

    .line 131
    new-array v0, v0, [Lcom/google/android/filament/Camera$Projection;

    sget-object v1, Lcom/google/android/filament/Camera$Projection;->PERSPECTIVE:Lcom/google/android/filament/Camera$Projection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Camera$Projection;->ORTHO:Lcom/google/android/filament/Camera$Projection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/filament/Camera$Projection;->$VALUES:[Lcom/google/android/filament/Camera$Projection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Camera$Projection;
    .locals 1

    .line 131
    const-class v0, Lcom/google/android/filament/Camera$Projection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Camera$Projection;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Camera$Projection;
    .locals 1

    .line 131
    sget-object v0, Lcom/google/android/filament/Camera$Projection;->$VALUES:[Lcom/google/android/filament/Camera$Projection;

    invoke-virtual {v0}, [Lcom/google/android/filament/Camera$Projection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Camera$Projection;

    return-object v0
.end method
