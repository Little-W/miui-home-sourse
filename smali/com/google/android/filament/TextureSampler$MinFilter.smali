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

    .line 44
    new-instance v0, Lcom/google/android/filament/TextureSampler$MinFilter;

    const/4 v1, 0x0

    const-string v2, "NEAREST"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/TextureSampler$MinFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$MinFilter;->NEAREST:Lcom/google/android/filament/TextureSampler$MinFilter;

    .line 48
    new-instance v0, Lcom/google/android/filament/TextureSampler$MinFilter;

    const/4 v2, 0x1

    const-string v3, "LINEAR"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/TextureSampler$MinFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$MinFilter;->LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

    .line 52
    new-instance v0, Lcom/google/android/filament/TextureSampler$MinFilter;

    const/4 v3, 0x2

    const-string v4, "NEAREST_MIPMAP_NEAREST"

    invoke-direct {v0, v4, v3}, Lcom/google/android/filament/TextureSampler$MinFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$MinFilter;->NEAREST_MIPMAP_NEAREST:Lcom/google/android/filament/TextureSampler$MinFilter;

    .line 56
    new-instance v0, Lcom/google/android/filament/TextureSampler$MinFilter;

    const/4 v4, 0x3

    const-string v5, "LINEAR_MIPMAP_NEAREST"

    invoke-direct {v0, v5, v4}, Lcom/google/android/filament/TextureSampler$MinFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$MinFilter;->LINEAR_MIPMAP_NEAREST:Lcom/google/android/filament/TextureSampler$MinFilter;

    .line 60
    new-instance v0, Lcom/google/android/filament/TextureSampler$MinFilter;

    const/4 v5, 0x4

    const-string v6, "NEAREST_MIPMAP_LINEAR"

    invoke-direct {v0, v6, v5}, Lcom/google/android/filament/TextureSampler$MinFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$MinFilter;->NEAREST_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

    .line 64
    new-instance v0, Lcom/google/android/filament/TextureSampler$MinFilter;

    const/4 v6, 0x5

    const-string v7, "LINEAR_MIPMAP_LINEAR"

    invoke-direct {v0, v7, v6}, Lcom/google/android/filament/TextureSampler$MinFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$MinFilter;->LINEAR_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/filament/TextureSampler$MinFilter;

    .line 40
    sget-object v7, Lcom/google/android/filament/TextureSampler$MinFilter;->NEAREST:Lcom/google/android/filament/TextureSampler$MinFilter;

    aput-object v7, v0, v1

    sget-object v1, Lcom/google/android/filament/TextureSampler$MinFilter;->LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/TextureSampler$MinFilter;->NEAREST_MIPMAP_NEAREST:Lcom/google/android/filament/TextureSampler$MinFilter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/TextureSampler$MinFilter;->LINEAR_MIPMAP_NEAREST:Lcom/google/android/filament/TextureSampler$MinFilter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/TextureSampler$MinFilter;->NEAREST_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/TextureSampler$MinFilter;->LINEAR_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

    aput-object v1, v0, v6

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

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/TextureSampler$MinFilter;
    .locals 1

    .line 40
    const-class v0, Lcom/google/android/filament/TextureSampler$MinFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/TextureSampler$MinFilter;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/TextureSampler$MinFilter;
    .locals 1

    .line 40
    sget-object v0, Lcom/google/android/filament/TextureSampler$MinFilter;->$VALUES:[Lcom/google/android/filament/TextureSampler$MinFilter;

    invoke-virtual {v0}, [Lcom/google/android/filament/TextureSampler$MinFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/TextureSampler$MinFilter;

    return-object v0
.end method
