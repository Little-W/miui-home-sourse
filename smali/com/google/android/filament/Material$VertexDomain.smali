.class public final enum Lcom/google/android/filament/Material$VertexDomain;
.super Ljava/lang/Enum;
.source "Material.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VertexDomain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Material$VertexDomain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Material$VertexDomain;

.field public static final enum DEVICE:Lcom/google/android/filament/Material$VertexDomain;

.field public static final enum OBJECT:Lcom/google/android/filament/Material$VertexDomain;

.field public static final enum VIEW:Lcom/google/android/filament/Material$VertexDomain;

.field public static final enum WORLD:Lcom/google/android/filament/Material$VertexDomain;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 178
    new-instance v0, Lcom/google/android/filament/Material$VertexDomain;

    const/4 v1, 0x0

    const-string v2, "OBJECT"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/Material$VertexDomain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$VertexDomain;->OBJECT:Lcom/google/android/filament/Material$VertexDomain;

    .line 181
    new-instance v0, Lcom/google/android/filament/Material$VertexDomain;

    const/4 v2, 0x1

    const-string v3, "WORLD"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/Material$VertexDomain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$VertexDomain;->WORLD:Lcom/google/android/filament/Material$VertexDomain;

    .line 184
    new-instance v0, Lcom/google/android/filament/Material$VertexDomain;

    const/4 v3, 0x2

    const-string v4, "VIEW"

    invoke-direct {v0, v4, v3}, Lcom/google/android/filament/Material$VertexDomain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$VertexDomain;->VIEW:Lcom/google/android/filament/Material$VertexDomain;

    .line 187
    new-instance v0, Lcom/google/android/filament/Material$VertexDomain;

    const/4 v4, 0x3

    const-string v5, "DEVICE"

    invoke-direct {v0, v5, v4}, Lcom/google/android/filament/Material$VertexDomain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$VertexDomain;->DEVICE:Lcom/google/android/filament/Material$VertexDomain;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/filament/Material$VertexDomain;

    .line 176
    sget-object v5, Lcom/google/android/filament/Material$VertexDomain;->OBJECT:Lcom/google/android/filament/Material$VertexDomain;

    aput-object v5, v0, v1

    sget-object v1, Lcom/google/android/filament/Material$VertexDomain;->WORLD:Lcom/google/android/filament/Material$VertexDomain;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Material$VertexDomain;->VIEW:Lcom/google/android/filament/Material$VertexDomain;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/Material$VertexDomain;->DEVICE:Lcom/google/android/filament/Material$VertexDomain;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/filament/Material$VertexDomain;->$VALUES:[Lcom/google/android/filament/Material$VertexDomain;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Material$VertexDomain;
    .locals 1

    .line 176
    const-class v0, Lcom/google/android/filament/Material$VertexDomain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Material$VertexDomain;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Material$VertexDomain;
    .locals 1

    .line 176
    sget-object v0, Lcom/google/android/filament/Material$VertexDomain;->$VALUES:[Lcom/google/android/filament/Material$VertexDomain;

    invoke-virtual {v0}, [Lcom/google/android/filament/Material$VertexDomain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Material$VertexDomain;

    return-object v0
.end method
