.class public final enum Lcom/google/android/filament/MaterialInstance$FloatElement;
.super Ljava/lang/Enum;
.source "MaterialInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/MaterialInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FloatElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/MaterialInstance$FloatElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/MaterialInstance$FloatElement;

.field public static final enum FLOAT:Lcom/google/android/filament/MaterialInstance$FloatElement;

.field public static final enum FLOAT2:Lcom/google/android/filament/MaterialInstance$FloatElement;

.field public static final enum FLOAT3:Lcom/google/android/filament/MaterialInstance$FloatElement;

.field public static final enum FLOAT4:Lcom/google/android/filament/MaterialInstance$FloatElement;

.field public static final enum MAT3:Lcom/google/android/filament/MaterialInstance$FloatElement;

.field public static final enum MAT4:Lcom/google/android/filament/MaterialInstance$FloatElement;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 44
    new-instance v0, Lcom/google/android/filament/MaterialInstance$FloatElement;

    const-string v1, "FLOAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/MaterialInstance$FloatElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/MaterialInstance$FloatElement;->FLOAT:Lcom/google/android/filament/MaterialInstance$FloatElement;

    .line 45
    new-instance v0, Lcom/google/android/filament/MaterialInstance$FloatElement;

    const-string v1, "FLOAT2"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/MaterialInstance$FloatElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/MaterialInstance$FloatElement;->FLOAT2:Lcom/google/android/filament/MaterialInstance$FloatElement;

    .line 46
    new-instance v0, Lcom/google/android/filament/MaterialInstance$FloatElement;

    const-string v1, "FLOAT3"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/filament/MaterialInstance$FloatElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/MaterialInstance$FloatElement;->FLOAT3:Lcom/google/android/filament/MaterialInstance$FloatElement;

    .line 47
    new-instance v0, Lcom/google/android/filament/MaterialInstance$FloatElement;

    const-string v1, "FLOAT4"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/filament/MaterialInstance$FloatElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/MaterialInstance$FloatElement;->FLOAT4:Lcom/google/android/filament/MaterialInstance$FloatElement;

    .line 48
    new-instance v0, Lcom/google/android/filament/MaterialInstance$FloatElement;

    const-string v1, "MAT3"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/filament/MaterialInstance$FloatElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/MaterialInstance$FloatElement;->MAT3:Lcom/google/android/filament/MaterialInstance$FloatElement;

    .line 49
    new-instance v0, Lcom/google/android/filament/MaterialInstance$FloatElement;

    const-string v1, "MAT4"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/android/filament/MaterialInstance$FloatElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/MaterialInstance$FloatElement;->MAT4:Lcom/google/android/filament/MaterialInstance$FloatElement;

    const/4 v0, 0x6

    .line 43
    new-array v0, v0, [Lcom/google/android/filament/MaterialInstance$FloatElement;

    sget-object v1, Lcom/google/android/filament/MaterialInstance$FloatElement;->FLOAT:Lcom/google/android/filament/MaterialInstance$FloatElement;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/MaterialInstance$FloatElement;->FLOAT2:Lcom/google/android/filament/MaterialInstance$FloatElement;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/MaterialInstance$FloatElement;->FLOAT3:Lcom/google/android/filament/MaterialInstance$FloatElement;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/MaterialInstance$FloatElement;->FLOAT4:Lcom/google/android/filament/MaterialInstance$FloatElement;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/MaterialInstance$FloatElement;->MAT3:Lcom/google/android/filament/MaterialInstance$FloatElement;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/filament/MaterialInstance$FloatElement;->MAT4:Lcom/google/android/filament/MaterialInstance$FloatElement;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/filament/MaterialInstance$FloatElement;->$VALUES:[Lcom/google/android/filament/MaterialInstance$FloatElement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/MaterialInstance$FloatElement;
    .locals 1

    .line 43
    const-class v0, Lcom/google/android/filament/MaterialInstance$FloatElement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/MaterialInstance$FloatElement;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/MaterialInstance$FloatElement;
    .locals 1

    .line 43
    sget-object v0, Lcom/google/android/filament/MaterialInstance$FloatElement;->$VALUES:[Lcom/google/android/filament/MaterialInstance$FloatElement;

    invoke-virtual {v0}, [Lcom/google/android/filament/MaterialInstance$FloatElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/MaterialInstance$FloatElement;

    return-object v0
.end method
