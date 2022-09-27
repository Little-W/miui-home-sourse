.class public final enum Lcom/google/android/filament/TextureSampler$MinFilter;
.super Ljava/lang/Enum;
.source "TextureSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/TextureSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MinFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/TextureSampler$MinFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/TextureSampler$MinFilter;

.field public static final enum LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

.field public static final enum LINEAR_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

.field public static final enum LINEAR_MIPMAP_NEAREST:Lcom/google/android/filament/TextureSampler$MinFilter;

.field public static final enum NEAREST:Lcom/google/android/filament/TextureSampler$MinFilter;

.field public static final enum NEAREST_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

.field public static final enum NEAREST_MIPMAP_NEAREST:Lcom/google/android/filament/TextureSampler$MinFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 52
    new-instance v0, Lcom/google/android/filament/TextureSampler$MinFilter;

    const-string v1, "NEAREST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/TextureSampler$MinFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$MinFilter;->NEAREST:Lcom/google/android/filament/TextureSampler$MinFilter;

    .line 56
    new-instance v0, Lcom/google/android/filament/TextureSampler$MinFilter;

    const-string v1, "LINEAR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/TextureSampler$MinFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$MinFilter;->LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

    .line 60
    new-instance v0, Lcom/google/android/filament/TextureSampler$MinFilter;

    const-string v1, "NEAREST_MIPMAP_NEAREST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/filament/TextureSampler$MinFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$MinFilter;->NEAREST_MIPMAP_NEAREST:Lcom/google/android/filament/TextureSampler$MinFilter;

    .line 64
    new-instance v0, Lcom/google/android/filament/TextureSampler$MinFilter;

    const-string v1, "LINEAR_MIPMAP_NEAREST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/filament/TextureSampler$MinFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$MinFilter;->LINEAR_MIPMAP_NEAREST:Lcom/google/android/filament/TextureSampler$MinFilter;

    .line 68
    new-instance v0, Lcom/google/android/filament/TextureSampler$MinFilter;

    const-string v1, "NEAREST_MIPMAP_LINEAR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/filament/TextureSampler$MinFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$MinFilter;->NEAREST_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

    .line 72
    new-instance v0, Lcom/google/android/filament/TextureSampler$MinFilter;

    const-string v1, "LINEAR_MIPMAP_LINEAR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/android/filament/TextureSampler$MinFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$MinFilter;->LINEAR_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

    const/4 v0, 0x6

    .line 48
    new-array v0, v0, [Lcom/google/android/filament/TextureSampler$MinFilter;

    sget-object v1, Lcom/google/android/filament/TextureSampler$MinFilter;->NEAREST:Lcom/google/android/filament/TextureSampler$MinFilter;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/TextureSampler$MinFilter;->LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/TextureSampler$MinFilter;->NEAREST_MIPMAP_NEAREST:Lcom/google/android/filament/TextureSampler$MinFilter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/TextureSampler$MinFilter;->LINEAR_MIPMAP_NEAREST:Lcom/google/android/filament/TextureSampler$MinFilter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/TextureSampler$MinFilter;->NEAREST_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/filament/TextureSampler$MinFilter;->LINEAR_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/filament/TextureSampler$MinFilter;->$VALUES:[Lcom/google/android/filament/TextureSampler$MinFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/TextureSampler$MinFilter;
    .locals 1

    .line 48
    const-class v0, Lcom/google/android/filament/TextureSampler$MinFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/TextureSampler$MinFilter;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/TextureSampler$MinFilter;
    .locals 1

    .line 48
    sget-object v0, Lcom/google/android/filament/TextureSampler$MinFilter;->$VALUES:[Lcom/google/android/filament/TextureSampler$MinFilter;

    invoke-virtual {v0}, [Lcom/google/android/filament/TextureSampler$MinFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/TextureSampler$MinFilter;

    return-object v0
.end method
