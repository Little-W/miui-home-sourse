.class public final enum Lcom/google/android/filament/Engine$Backend;
.super Ljava/lang/Enum;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Backend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Engine$Backend;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Engine$Backend;

.field public static final enum DEFAULT:Lcom/google/android/filament/Engine$Backend;

.field public static final enum METAL:Lcom/google/android/filament/Engine$Backend;

.field public static final enum NOOP:Lcom/google/android/filament/Engine$Backend;

.field public static final enum OPENGL:Lcom/google/android/filament/Engine$Backend;

.field public static final enum VULKAN:Lcom/google/android/filament/Engine$Backend;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 125
    new-instance v0, Lcom/google/android/filament/Engine$Backend;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$Backend;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$Backend;->DEFAULT:Lcom/google/android/filament/Engine$Backend;

    .line 129
    new-instance v0, Lcom/google/android/filament/Engine$Backend;

    const-string v1, "OPENGL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/Engine$Backend;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$Backend;->OPENGL:Lcom/google/android/filament/Engine$Backend;

    .line 133
    new-instance v0, Lcom/google/android/filament/Engine$Backend;

    const-string v1, "VULKAN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/filament/Engine$Backend;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$Backend;->VULKAN:Lcom/google/android/filament/Engine$Backend;

    .line 137
    new-instance v0, Lcom/google/android/filament/Engine$Backend;

    const-string v1, "METAL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/filament/Engine$Backend;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$Backend;->METAL:Lcom/google/android/filament/Engine$Backend;

    .line 141
    new-instance v0, Lcom/google/android/filament/Engine$Backend;

    const-string v1, "NOOP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/filament/Engine$Backend;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$Backend;->NOOP:Lcom/google/android/filament/Engine$Backend;

    const/4 v0, 0x5

    .line 121
    new-array v0, v0, [Lcom/google/android/filament/Engine$Backend;

    sget-object v1, Lcom/google/android/filament/Engine$Backend;->DEFAULT:Lcom/google/android/filament/Engine$Backend;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Engine$Backend;->OPENGL:Lcom/google/android/filament/Engine$Backend;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/Engine$Backend;->VULKAN:Lcom/google/android/filament/Engine$Backend;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/Engine$Backend;->METAL:Lcom/google/android/filament/Engine$Backend;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/Engine$Backend;->NOOP:Lcom/google/android/filament/Engine$Backend;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/filament/Engine$Backend;->$VALUES:[Lcom/google/android/filament/Engine$Backend;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Engine$Backend;
    .locals 1

    .line 121
    const-class v0, Lcom/google/android/filament/Engine$Backend;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Engine$Backend;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Engine$Backend;
    .locals 1

    .line 121
    sget-object v0, Lcom/google/android/filament/Engine$Backend;->$VALUES:[Lcom/google/android/filament/Engine$Backend;

    invoke-virtual {v0}, [Lcom/google/android/filament/Engine$Backend;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Engine$Backend;

    return-object v0
.end method
