.class public final enum Lcom/google/android/filament/BufferObject$Builder$BindingType;
.super Ljava/lang/Enum;
.source "BufferObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/BufferObject$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BindingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/BufferObject$Builder$BindingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/BufferObject$Builder$BindingType;

.field public static final enum VERTEX:Lcom/google/android/filament/BufferObject$Builder$BindingType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lcom/google/android/filament/BufferObject$Builder$BindingType;

    const-string v1, "VERTEX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/BufferObject$Builder$BindingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/BufferObject$Builder$BindingType;->VERTEX:Lcom/google/android/filament/BufferObject$Builder$BindingType;

    const/4 v0, 0x1

    .line 51
    new-array v0, v0, [Lcom/google/android/filament/BufferObject$Builder$BindingType;

    sget-object v1, Lcom/google/android/filament/BufferObject$Builder$BindingType;->VERTEX:Lcom/google/android/filament/BufferObject$Builder$BindingType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/filament/BufferObject$Builder$BindingType;->$VALUES:[Lcom/google/android/filament/BufferObject$Builder$BindingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/BufferObject$Builder$BindingType;
    .locals 1

    .line 51
    const-class v0, Lcom/google/android/filament/BufferObject$Builder$BindingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/BufferObject$Builder$BindingType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/BufferObject$Builder$BindingType;
    .locals 1

    .line 51
    sget-object v0, Lcom/google/android/filament/BufferObject$Builder$BindingType;->$VALUES:[Lcom/google/android/filament/BufferObject$Builder$BindingType;

    invoke-virtual {v0}, [Lcom/google/android/filament/BufferObject$Builder$BindingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/BufferObject$Builder$BindingType;

    return-object v0
.end method
