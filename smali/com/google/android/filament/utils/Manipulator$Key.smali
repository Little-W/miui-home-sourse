.class public final enum Lcom/google/android/filament/utils/Manipulator$Key;
.super Ljava/lang/Enum;
.source "Manipulator.java"


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

    .line 51
    new-instance v0, Lcom/google/android/filament/utils/Manipulator$Key;

    const-string v1, "FORWARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Manipulator$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$Key;->FORWARD:Lcom/google/android/filament/utils/Manipulator$Key;

    .line 52
    new-instance v0, Lcom/google/android/filament/utils/Manipulator$Key;

    const-string v1, "LEFT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/utils/Manipulator$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$Key;->LEFT:Lcom/google/android/filament/utils/Manipulator$Key;

    .line 53
    new-instance v0, Lcom/google/android/filament/utils/Manipulator$Key;

    const-string v1, "BACKWARD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/filament/utils/Manipulator$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$Key;->BACKWARD:Lcom/google/android/filament/utils/Manipulator$Key;

    .line 54
    new-instance v0, Lcom/google/android/filament/utils/Manipulator$Key;

    const-string v1, "RIGHT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/filament/utils/Manipulator$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$Key;->RIGHT:Lcom/google/android/filament/utils/Manipulator$Key;

    .line 55
    new-instance v0, Lcom/google/android/filament/utils/Manipulator$Key;

    const-string v1, "UP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/filament/utils/Manipulator$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$Key;->UP:Lcom/google/android/filament/utils/Manipulator$Key;

    .line 56
    new-instance v0, Lcom/google/android/filament/utils/Manipulator$Key;

    const-string v1, "DOWN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/android/filament/utils/Manipulator$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/Manipulator$Key;->DOWN:Lcom/google/android/filament/utils/Manipulator$Key;

    const/4 v0, 0x6

    .line 50
    new-array v0, v0, [Lcom/google/android/filament/utils/Manipulator$Key;

    sget-object v1, Lcom/google/android/filament/utils/Manipulator$Key;->FORWARD:Lcom/google/android/filament/utils/Manipulator$Key;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/utils/Manipulator$Key;->LEFT:Lcom/google/android/filament/utils/Manipulator$Key;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/utils/Manipulator$Key;->BACKWARD:Lcom/google/android/filament/utils/Manipulator$Key;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/utils/Manipulator$Key;->RIGHT:Lcom/google/android/filament/utils/Manipulator$Key;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/utils/Manipulator$Key;->UP:Lcom/google/android/filament/utils/Manipulator$Key;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/filament/utils/Manipulator$Key;->DOWN:Lcom/google/android/filament/utils/Manipulator$Key;

    aput-object v1, v0, v7

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

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/utils/Manipulator$Key;
    .locals 1

    .line 50
    const-class v0, Lcom/google/android/filament/utils/Manipulator$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/utils/Manipulator$Key;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/utils/Manipulator$Key;
    .locals 1

    .line 50
    sget-object v0, Lcom/google/android/filament/utils/Manipulator$Key;->$VALUES:[Lcom/google/android/filament/utils/Manipulator$Key;

    invoke-virtual {v0}, [Lcom/google/android/filament/utils/Manipulator$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/utils/Manipulator$Key;

    return-object v0
.end method
