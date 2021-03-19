.class public final enum Lcom/google/android/filament/MaterialInstance$BooleanElement;
.super Ljava/lang/Enum;
.source "MaterialInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/MaterialInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BooleanElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/MaterialInstance$BooleanElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/MaterialInstance$BooleanElement;

.field public static final enum BOOL:Lcom/google/android/filament/MaterialInstance$BooleanElement;

.field public static final enum BOOL2:Lcom/google/android/filament/MaterialInstance$BooleanElement;

.field public static final enum BOOL3:Lcom/google/android/filament/MaterialInstance$BooleanElement;

.field public static final enum BOOL4:Lcom/google/android/filament/MaterialInstance$BooleanElement;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 30
    new-instance v0, Lcom/google/android/filament/MaterialInstance$BooleanElement;

    const-string v1, "BOOL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/MaterialInstance$BooleanElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/MaterialInstance$BooleanElement;->BOOL:Lcom/google/android/filament/MaterialInstance$BooleanElement;

    .line 31
    new-instance v0, Lcom/google/android/filament/MaterialInstance$BooleanElement;

    const-string v1, "BOOL2"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/MaterialInstance$BooleanElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/MaterialInstance$BooleanElement;->BOOL2:Lcom/google/android/filament/MaterialInstance$BooleanElement;

    .line 32
    new-instance v0, Lcom/google/android/filament/MaterialInstance$BooleanElement;

    const-string v1, "BOOL3"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/filament/MaterialInstance$BooleanElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/MaterialInstance$BooleanElement;->BOOL3:Lcom/google/android/filament/MaterialInstance$BooleanElement;

    .line 33
    new-instance v0, Lcom/google/android/filament/MaterialInstance$BooleanElement;

    const-string v1, "BOOL4"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/filament/MaterialInstance$BooleanElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/MaterialInstance$BooleanElement;->BOOL4:Lcom/google/android/filament/MaterialInstance$BooleanElement;

    const/4 v0, 0x4

    .line 29
    new-array v0, v0, [Lcom/google/android/filament/MaterialInstance$BooleanElement;

    sget-object v1, Lcom/google/android/filament/MaterialInstance$BooleanElement;->BOOL:Lcom/google/android/filament/MaterialInstance$BooleanElement;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/MaterialInstance$BooleanElement;->BOOL2:Lcom/google/android/filament/MaterialInstance$BooleanElement;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/MaterialInstance$BooleanElement;->BOOL3:Lcom/google/android/filament/MaterialInstance$BooleanElement;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/MaterialInstance$BooleanElement;->BOOL4:Lcom/google/android/filament/MaterialInstance$BooleanElement;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/filament/MaterialInstance$BooleanElement;->$VALUES:[Lcom/google/android/filament/MaterialInstance$BooleanElement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/MaterialInstance$BooleanElement;
    .locals 1

    .line 29
    const-class v0, Lcom/google/android/filament/MaterialInstance$BooleanElement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/MaterialInstance$BooleanElement;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/MaterialInstance$BooleanElement;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/filament/MaterialInstance$BooleanElement;->$VALUES:[Lcom/google/android/filament/MaterialInstance$BooleanElement;

    invoke-virtual {v0}, [Lcom/google/android/filament/MaterialInstance$BooleanElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/MaterialInstance$BooleanElement;

    return-object v0
.end method
