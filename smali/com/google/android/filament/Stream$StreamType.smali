.class public final enum Lcom/google/android/filament/Stream$StreamType;
.super Ljava/lang/Enum;


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

    new-instance v0, Lcom/google/android/filament/Stream$StreamType;

    const/4 v1, 0x0

    const-string v2, "NATIVE"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/Stream$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Stream$StreamType;->NATIVE:Lcom/google/android/filament/Stream$StreamType;

    new-instance v0, Lcom/google/android/filament/Stream$StreamType;

    const/4 v2, 0x1

    const-string v3, "TEXTURE_ID"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/Stream$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Stream$StreamType;->TEXTURE_ID:Lcom/google/android/filament/Stream$StreamType;

    new-instance v0, Lcom/google/android/filament/Stream$StreamType;

    const/4 v3, 0x2

    const-string v4, "ACQUIRED"

    invoke-direct {v0, v4, v3}, Lcom/google/android/filament/Stream$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Stream$StreamType;->ACQUIRED:Lcom/google/android/filament/Stream$StreamType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/filament/Stream$StreamType;

    sget-object v4, Lcom/google/android/filament/Stream$StreamType;->NATIVE:Lcom/google/android/filament/Stream$StreamType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/android/filament/Stream$StreamType;->TEXTURE_ID:Lcom/google/android/filament/Stream$StreamType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/Stream$StreamType;->ACQUIRED:Lcom/google/android/filament/Stream$StreamType;

    aput-object v1, v0, v3

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Stream$StreamType;
    .locals 1

    const-class v0, Lcom/google/android/filament/Stream$StreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Stream$StreamType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Stream$StreamType;
    .locals 1

    sget-object v0, Lcom/google/android/filament/Stream$StreamType;->$VALUES:[Lcom/google/android/filament/Stream$StreamType;

    invoke-virtual {v0}, [Lcom/google/android/filament/Stream$StreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Stream$StreamType;

    return-object v0
.end method
