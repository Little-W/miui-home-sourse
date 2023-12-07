.class public final enum Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/android/UiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContextErrorPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

.field public static final enum CHECK:Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

.field public static final enum DONT_CHECK:Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

    const/4 v1, 0x0

    const-string v2, "CHECK"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;->CHECK:Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

    new-instance v0, Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

    const/4 v2, 0x1

    const-string v3, "DONT_CHECK"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;->DONT_CHECK:Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

    sget-object v3, Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;->CHECK:Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;->DONT_CHECK:Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;->$VALUES:[Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;
    .locals 1

    const-class v0, Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;
    .locals 1

    sget-object v0, Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;->$VALUES:[Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

    invoke-virtual {v0}, [Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

    return-object v0
.end method
