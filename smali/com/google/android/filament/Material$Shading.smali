.class public final enum Lcom/google/android/filament/Material$Shading;
.super Ljava/lang/Enum;
.source "Material.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Shading"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Material$Shading;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Material$Shading;

.field public static final enum CLOTH:Lcom/google/android/filament/Material$Shading;

.field public static final enum LIT:Lcom/google/android/filament/Material$Shading;

.field public static final enum SPECULAR_GLOSSINESS:Lcom/google/android/filament/Material$Shading;

.field public static final enum SUBSURFACE:Lcom/google/android/filament/Material$Shading;

.field public static final enum UNLIT:Lcom/google/android/filament/Material$Shading;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 54
    new-instance v0, Lcom/google/android/filament/Material$Shading;

    const/4 v1, 0x0

    const-string v2, "UNLIT"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/Material$Shading;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Shading;->UNLIT:Lcom/google/android/filament/Material$Shading;

    .line 63
    new-instance v0, Lcom/google/android/filament/Material$Shading;

    const/4 v2, 0x1

    const-string v3, "LIT"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/Material$Shading;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Shading;->LIT:Lcom/google/android/filament/Material$Shading;

    .line 72
    new-instance v0, Lcom/google/android/filament/Material$Shading;

    const/4 v3, 0x2

    const-string v4, "SUBSURFACE"

    invoke-direct {v0, v4, v3}, Lcom/google/android/filament/Material$Shading;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Shading;->SUBSURFACE:Lcom/google/android/filament/Material$Shading;

    .line 81
    new-instance v0, Lcom/google/android/filament/Material$Shading;

    const/4 v4, 0x3

    const-string v5, "CLOTH"

    invoke-direct {v0, v5, v4}, Lcom/google/android/filament/Material$Shading;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Shading;->CLOTH:Lcom/google/android/filament/Material$Shading;

    .line 90
    new-instance v0, Lcom/google/android/filament/Material$Shading;

    const/4 v5, 0x4

    const-string v6, "SPECULAR_GLOSSINESS"

    invoke-direct {v0, v6, v5}, Lcom/google/android/filament/Material$Shading;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Shading;->SPECULAR_GLOSSINESS:Lcom/google/android/filament/Material$Shading;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/filament/Material$Shading;

    .line 46
    sget-object v6, Lcom/google/android/filament/Material$Shading;->UNLIT:Lcom/google/android/filament/Material$Shading;

    aput-object v6, v0, v1

    sget-object v1, Lcom/google/android/filament/Material$Shading;->LIT:Lcom/google/android/filament/Material$Shading;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Material$Shading;->SUBSURFACE:Lcom/google/android/filament/Material$Shading;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/Material$Shading;->CLOTH:Lcom/google/android/filament/Material$Shading;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/Material$Shading;->SPECULAR_GLOSSINESS:Lcom/google/android/filament/Material$Shading;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/filament/Material$Shading;->$VALUES:[Lcom/google/android/filament/Material$Shading;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Material$Shading;
    .locals 1

    .line 46
    const-class v0, Lcom/google/android/filament/Material$Shading;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Material$Shading;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Material$Shading;
    .locals 1

    .line 46
    sget-object v0, Lcom/google/android/filament/Material$Shading;->$VALUES:[Lcom/google/android/filament/Material$Shading;

    invoke-virtual {v0}, [Lcom/google/android/filament/Material$Shading;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Material$Shading;

    return-object v0
.end method
