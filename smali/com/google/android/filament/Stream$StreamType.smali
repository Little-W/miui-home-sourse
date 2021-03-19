.class public final enum Lcom/google/android/filament/Stream$StreamType;
.super Ljava/lang/Enum;
.source "Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StreamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Stream$StreamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Stream$StreamType;

.field public static final enum ACQUIRED:Lcom/google/android/filament/Stream$StreamType;

.field public static final enum NATIVE:Lcom/google/android/filament/Stream$StreamType;

.field public static final enum TEXTURE_ID:Lcom/google/android/filament/Stream$StreamType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    new-instance v0, Lcom/google/android/filament/Stream$StreamType;

    const-string v1, "NATIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Stream$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Stream$StreamType;->NATIVE:Lcom/google/android/filament/Stream$StreamType;

    .line 44
    new-instance v0, Lcom/google/android/filament/Stream$StreamType;

    const-string v1, "TEXTURE_ID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/Stream$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Stream$StreamType;->TEXTURE_ID:Lcom/google/android/filament/Stream$StreamType;

    .line 47
    new-instance v0, Lcom/google/android/filament/Stream$StreamType;

    const-string v1, "ACQUIRED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/filament/Stream$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Stream$StreamType;->ACQUIRED:Lcom/google/android/filament/Stream$StreamType;

    const/4 v0, 0x3

    .line 39
    new-array v0, v0, [Lcom/google/android/filament/Stream$StreamType;

    sget-object v1, Lcom/google/android/filament/Stream$StreamType;->NATIVE:Lcom/google/android/filament/Stream$StreamType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Stream$StreamType;->TEXTURE_ID:Lcom/google/android/filament/Stream$StreamType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/Stream$StreamType;->ACQUIRED:Lcom/google/android/filament/Stream$StreamType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/filament/Stream$StreamType;->$VALUES:[Lcom/google/android/filament/Stream$StreamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Stream$StreamType;
    .locals 1

    .line 39
    const-class v0, Lcom/google/android/filament/Stream$StreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Stream$StreamType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Stream$StreamType;
    .locals 1

    .line 39
    sget-object v0, Lcom/google/android/filament/Stream$StreamType;->$VALUES:[Lcom/google/android/filament/Stream$StreamType;

    invoke-virtual {v0}, [Lcom/google/android/filament/Stream$StreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Stream$StreamType;

    return-object v0
.end method
