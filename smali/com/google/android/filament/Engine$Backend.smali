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

    .line 121
    new-instance v0, Lcom/google/android/filament/Engine$Backend;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/Engine$Backend;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$Backend;->DEFAULT:Lcom/google/android/filament/Engine$Backend;

    .line 125
    new-instance v0, Lcom/google/android/filament/Engine$Backend;

    const/4 v2, 0x1

    const-string v3, "OPENGL"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/Engine$Backend;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$Backend;->OPENGL:Lcom/google/android/filament/Engine$Backend;

    .line 129
    new-instance v0, Lcom/google/android/filament/Engine$Backend;

    const/4 v3, 0x2

    const-string v4, "VULKAN"

    invoke-direct {v0, v4, v3}, Lcom/google/android/filament/Engine$Backend;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$Backend;->VULKAN:Lcom/google/android/filament/Engine$Backend;

    .line 133
    new-instance v0, Lcom/google/android/filament/Engine$Backend;

    const/4 v4, 0x3

    const-string v5, "METAL"

    invoke-direct {v0, v5, v4}, Lcom/google/android/filament/Engine$Backend;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$Backend;->METAL:Lcom/google/android/filament/Engine$Backend;

    .line 137
    new-instance v0, Lcom/google/android/filament/Engine$Backend;

    const/4 v5, 0x4

    const-string v6, "NOOP"

    invoke-direct {v0, v6, v5}, Lcom/google/android/filament/Engine$Backend;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$Backend;->NOOP:Lcom/google/android/filament/Engine$Backend;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/filament/Engine$Backend;

    .line 117
    sget-object v6, Lcom/google/android/filament/Engine$Backend;->DEFAULT:Lcom/google/android/filament/Engine$Backend;

    aput-object v6, v0, v1

    sget-object v1, Lcom/google/android/filament/Engine$Backend;->OPENGL:Lcom/google/android/filament/Engine$Backend;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Engine$Backend;->VULKAN:Lcom/google/android/filament/Engine$Backend;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/Engine$Backend;->METAL:Lcom/google/android/filament/Engine$Backend;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/Engine$Backend;->NOOP:Lcom/google/android/filament/Engine$Backend;

    aput-object v1, v0, v5

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

    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Engine$Backend;
    .locals 1

    .line 117
    const-class v0, Lcom/google/android/filament/Engine$Backend;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Engine$Backend;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Engine$Backend;
    .locals 1

    .line 117
    sget-object v0, Lcom/google/android/filament/Engine$Backend;->$VALUES:[Lcom/google/android/filament/Engine$Backend;

    invoke-virtual {v0}, [Lcom/google/android/filament/Engine$Backend;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Engine$Backend;

    return-object v0
.end method
