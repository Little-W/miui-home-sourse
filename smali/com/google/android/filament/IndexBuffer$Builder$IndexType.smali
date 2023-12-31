.class public final enum Lcom/google/android/filament/IndexBuffer$Builder$IndexType;
.super Ljava/lang/Enum;
.source "IndexBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/IndexBuffer$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IndexType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/IndexBuffer$Builder$IndexType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/IndexBuffer$Builder$IndexType;

.field public static final enum UINT:Lcom/google/android/filament/IndexBuffer$Builder$IndexType;

.field public static final enum USHORT:Lcom/google/android/filament/IndexBuffer$Builder$IndexType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 55
    new-instance v0, Lcom/google/android/filament/IndexBuffer$Builder$IndexType;

    const/4 v1, 0x0

    const-string v2, "USHORT"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/IndexBuffer$Builder$IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/IndexBuffer$Builder$IndexType;->USHORT:Lcom/google/android/filament/IndexBuffer$Builder$IndexType;

    .line 58
    new-instance v0, Lcom/google/android/filament/IndexBuffer$Builder$IndexType;

    const/4 v2, 0x1

    const-string v3, "UINT"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/IndexBuffer$Builder$IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/IndexBuffer$Builder$IndexType;->UINT:Lcom/google/android/filament/IndexBuffer$Builder$IndexType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/filament/IndexBuffer$Builder$IndexType;

    .line 53
    sget-object v3, Lcom/google/android/filament/IndexBuffer$Builder$IndexType;->USHORT:Lcom/google/android/filament/IndexBuffer$Builder$IndexType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/android/filament/IndexBuffer$Builder$IndexType;->UINT:Lcom/google/android/filament/IndexBuffer$Builder$IndexType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/filament/IndexBuffer$Builder$IndexType;->$VALUES:[Lcom/google/android/filament/IndexBuffer$Builder$IndexType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/IndexBuffer$Builder$IndexType;
    .locals 1

    .line 53
    const-class v0, Lcom/google/android/filament/IndexBuffer$Builder$IndexType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/IndexBuffer$Builder$IndexType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/IndexBuffer$Builder$IndexType;
    .locals 1

    .line 53
    sget-object v0, Lcom/google/android/filament/IndexBuffer$Builder$IndexType;->$VALUES:[Lcom/google/android/filament/IndexBuffer$Builder$IndexType;

    invoke-virtual {v0}, [Lcom/google/android/filament/IndexBuffer$Builder$IndexType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/IndexBuffer$Builder$IndexType;

    return-object v0
.end method
