.class public final enum Lcom/google/android/filament/Material$BlendingMode;
.super Ljava/lang/Enum;
.source "Material.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlendingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Material$BlendingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Material$BlendingMode;

.field public static final enum ADD:Lcom/google/android/filament/Material$BlendingMode;

.field public static final enum FADE:Lcom/google/android/filament/Material$BlendingMode;

.field public static final enum MASKED:Lcom/google/android/filament/Material$BlendingMode;

.field public static final enum MULTIPLY:Lcom/google/android/filament/Material$BlendingMode;

.field public static final enum OPAQUE:Lcom/google/android/filament/Material$BlendingMode;

.field public static final enum SCREEN:Lcom/google/android/filament/Material$BlendingMode;

.field public static final enum TRANSPARENT:Lcom/google/android/filament/Material$BlendingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 117
    new-instance v0, Lcom/google/android/filament/Material$BlendingMode;

    const/4 v1, 0x0

    const-string v2, "OPAQUE"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/Material$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$BlendingMode;->OPAQUE:Lcom/google/android/filament/Material$BlendingMode;

    .line 123
    new-instance v0, Lcom/google/android/filament/Material$BlendingMode;

    const/4 v2, 0x1

    const-string v3, "TRANSPARENT"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/Material$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$BlendingMode;->TRANSPARENT:Lcom/google/android/filament/Material$BlendingMode;

    .line 126
    new-instance v0, Lcom/google/android/filament/Material$BlendingMode;

    const/4 v3, 0x2

    const-string v4, "ADD"

    invoke-direct {v0, v4, v3}, Lcom/google/android/filament/Material$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$BlendingMode;->ADD:Lcom/google/android/filament/Material$BlendingMode;

    .line 129
    new-instance v0, Lcom/google/android/filament/Material$BlendingMode;

    const/4 v4, 0x3

    const-string v5, "MASKED"

    invoke-direct {v0, v5, v4}, Lcom/google/android/filament/Material$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$BlendingMode;->MASKED:Lcom/google/android/filament/Material$BlendingMode;

    .line 135
    new-instance v0, Lcom/google/android/filament/Material$BlendingMode;

    const/4 v5, 0x4

    const-string v6, "FADE"

    invoke-direct {v0, v6, v5}, Lcom/google/android/filament/Material$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$BlendingMode;->FADE:Lcom/google/android/filament/Material$BlendingMode;

    .line 138
    new-instance v0, Lcom/google/android/filament/Material$BlendingMode;

    const/4 v6, 0x5

    const-string v7, "MULTIPLY"

    invoke-direct {v0, v7, v6}, Lcom/google/android/filament/Material$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$BlendingMode;->MULTIPLY:Lcom/google/android/filament/Material$BlendingMode;

    .line 141
    new-instance v0, Lcom/google/android/filament/Material$BlendingMode;

    const/4 v7, 0x6

    const-string v8, "SCREEN"

    invoke-direct {v0, v8, v7}, Lcom/google/android/filament/Material$BlendingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$BlendingMode;->SCREEN:Lcom/google/android/filament/Material$BlendingMode;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/filament/Material$BlendingMode;

    .line 115
    sget-object v8, Lcom/google/android/filament/Material$BlendingMode;->OPAQUE:Lcom/google/android/filament/Material$BlendingMode;

    aput-object v8, v0, v1

    sget-object v1, Lcom/google/android/filament/Material$BlendingMode;->TRANSPARENT:Lcom/google/android/filament/Material$BlendingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Material$BlendingMode;->ADD:Lcom/google/android/filament/Material$BlendingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/Material$BlendingMode;->MASKED:Lcom/google/android/filament/Material$BlendingMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/Material$BlendingMode;->FADE:Lcom/google/android/filament/Material$BlendingMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/Material$BlendingMode;->MULTIPLY:Lcom/google/android/filament/Material$BlendingMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/filament/Material$BlendingMode;->SCREEN:Lcom/google/android/filament/Material$BlendingMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/filament/Material$BlendingMode;->$VALUES:[Lcom/google/android/filament/Material$BlendingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Material$BlendingMode;
    .locals 1

    .line 115
    const-class v0, Lcom/google/android/filament/Material$BlendingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Material$BlendingMode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Material$BlendingMode;
    .locals 1

    .line 115
    sget-object v0, Lcom/google/android/filament/Material$BlendingMode;->$VALUES:[Lcom/google/android/filament/Material$BlendingMode;

    invoke-virtual {v0}, [Lcom/google/android/filament/Material$BlendingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Material$BlendingMode;

    return-object v0
.end method
