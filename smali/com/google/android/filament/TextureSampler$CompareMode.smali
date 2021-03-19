.class public final enum Lcom/google/android/filament/TextureSampler$CompareMode;
.super Ljava/lang/Enum;
.source "TextureSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/TextureSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompareMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/TextureSampler$CompareMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/TextureSampler$CompareMode;

.field public static final enum COMPARE_TO_TEXTURE:Lcom/google/android/filament/TextureSampler$CompareMode;

.field public static final enum NONE:Lcom/google/android/filament/TextureSampler$CompareMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 79
    new-instance v0, Lcom/google/android/filament/TextureSampler$CompareMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/TextureSampler$CompareMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$CompareMode;->NONE:Lcom/google/android/filament/TextureSampler$CompareMode;

    .line 80
    new-instance v0, Lcom/google/android/filament/TextureSampler$CompareMode;

    const-string v1, "COMPARE_TO_TEXTURE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/TextureSampler$CompareMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$CompareMode;->COMPARE_TO_TEXTURE:Lcom/google/android/filament/TextureSampler$CompareMode;

    const/4 v0, 0x2

    .line 78
    new-array v0, v0, [Lcom/google/android/filament/TextureSampler$CompareMode;

    sget-object v1, Lcom/google/android/filament/TextureSampler$CompareMode;->NONE:Lcom/google/android/filament/TextureSampler$CompareMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/TextureSampler$CompareMode;->COMPARE_TO_TEXTURE:Lcom/google/android/filament/TextureSampler$CompareMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/filament/TextureSampler$CompareMode;->$VALUES:[Lcom/google/android/filament/TextureSampler$CompareMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/TextureSampler$CompareMode;
    .locals 1

    .line 78
    const-class v0, Lcom/google/android/filament/TextureSampler$CompareMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/TextureSampler$CompareMode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/TextureSampler$CompareMode;
    .locals 1

    .line 78
    sget-object v0, Lcom/google/android/filament/TextureSampler$CompareMode;->$VALUES:[Lcom/google/android/filament/TextureSampler$CompareMode;

    invoke-virtual {v0}, [Lcom/google/android/filament/TextureSampler$CompareMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/TextureSampler$CompareMode;

    return-object v0
.end method
