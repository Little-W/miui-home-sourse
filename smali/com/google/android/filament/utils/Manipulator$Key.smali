.class public final enum Lcom/google/android/filament/utils/Manipulator$Key;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/Manipulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/utils/Manipulator$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/utils/Manipulator$Key;

.field public static final enum BACKWARD:Lcom/google/android/filament/utils/Manipulator$Key;

.field public static final enum DOWN:Lcom/google/android/filament/utils/Manipulator$Key;

.field public static final enum FORWARD:Lcom/google/android/filament/utils/Manipulator$Key;

.field public static final enum LEFT:Lcom/google/android/filament/utils/Manipulator$Key;

.field public static final enum RIGHT:Lcom/google/android/filament/utils/Manipulator$Key;

.field public static final enum UP:Lcom/google/android/filament/utils/Manipulator$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/google/android/filament/utils/Manipulator$Key;

    const/4 v1, 0x0

    const-string v2, "FORWARD"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/utils/Manipulator$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$Key;->FORWARD:Lcom/google/android/filament/utils/Manipulator$Key;

    new-instance v0, Lcom/google/android/filament/utils/Manipulator$Key;

    const/4 v2, 0x1

    const-string v3, "LEFT"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/utils/Manipulator$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$Key;->LEFT:Lcom/google/android/filament/utils/Manipulator$Key;

    new-instance v0, Lcom/google/android/filament/utils/Manipulator$Key;

    const/4 v3, 0x2

    const-string v4, "BACKWARD"

    invoke-direct {v0, v4, v3}, Lcom/google/android/filament/utils/Manipulator$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$Key;->BACKWARD:Lcom/google/android/filament/utils/Manipulator$Key;

    new-instance v0, Lcom/google/android/filament/utils/Manipulator$Key;

    const/4 v4, 0x3

    const-string v5, "RIGHT"

    invoke-direct {v0, v5, v4}, Lcom/google/android/filament/utils/Manipulator$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$Key;->RIGHT:Lcom/google/android/filament/utils/Manipulator$Key;

    new-instance v0, Lcom/google/android/filament/utils/Manipulator$Key;

    const/4 v5, 0x4

    const-string v6, "UP"

    invoke-direct {v0, v6, v5}, Lcom/google/android/filament/utils/Manipulator$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$Key;->UP:Lcom/google/android/filament/utils/Manipulator$Key;

    new-instance v0, Lcom/google/android/filament/utils/Manipulator$Key;

    const/4 v6, 0x5

    const-string v7, "DOWN"

    invoke-direct {v0, v7, v6}, Lcom/google/android/filament/utils/Manipulator$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$Key;->DOWN:Lcom/google/android/filament/utils/Manipulator$Key;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/filament/utils/Manipulator$Key;

    sget-object v7, Lcom/google/android/filament/utils/Manipulator$Key;->FORWARD:Lcom/google/android/filament/utils/Manipulator$Key;

    aput-object v7, v0, v1

    sget-object v1, Lcom/google/android/filament/utils/Manipulator$Key;->LEFT:Lcom/google/android/filament/utils/Manipulator$Key;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/utils/Manipulator$Key;->BACKWARD:Lcom/google/android/filament/utils/Manipulator$Key;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/utils/Manipulator$Key;->RIGHT:Lcom/google/android/filament/utils/Manipulator$Key;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/utils/Manipulator$Key;->UP:Lcom/google/android/filament/utils/Manipulator$Key;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/utils/Manipulator$Key;->DOWN:Lcom/google/android/filament/utils/Manipulator$Key;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$Key;->$VALUES:[Lcom/google/android/filament/utils/Manipulator$Key;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/utils/Manipulator$Key;
    .locals 1

    const-class v0, Lcom/google/android/filament/utils/Manipulator$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/utils/Manipulator$Key;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/utils/Manipulator$Key;
    .locals 1

    sget-object v0, Lcom/google/android/filament/utils/Manipulator$Key;->$VALUES:[Lcom/google/android/filament/utils/Manipulator$Key;

    invoke-virtual {v0}, [Lcom/google/android/filament/utils/Manipulator$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/utils/Manipulator$Key;

    return-object v0
.end method
