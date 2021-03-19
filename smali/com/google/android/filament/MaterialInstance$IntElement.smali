.class public final enum Lcom/google/android/filament/MaterialInstance$IntElement;
.super Ljava/lang/Enum;
.source "MaterialInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/MaterialInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/MaterialInstance$IntElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/MaterialInstance$IntElement;

.field public static final enum INT:Lcom/google/android/filament/MaterialInstance$IntElement;

.field public static final enum INT2:Lcom/google/android/filament/MaterialInstance$IntElement;

.field public static final enum INT3:Lcom/google/android/filament/MaterialInstance$IntElement;

.field public static final enum INT4:Lcom/google/android/filament/MaterialInstance$IntElement;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 37
    new-instance v0, Lcom/google/android/filament/MaterialInstance$IntElement;

    const-string v1, "INT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/MaterialInstance$IntElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/MaterialInstance$IntElement;->INT:Lcom/google/android/filament/MaterialInstance$IntElement;

    .line 38
    new-instance v0, Lcom/google/android/filament/MaterialInstance$IntElement;

    const-string v1, "INT2"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/MaterialInstance$IntElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/MaterialInstance$IntElement;->INT2:Lcom/google/android/filament/MaterialInstance$IntElement;

    .line 39
    new-instance v0, Lcom/google/android/filament/MaterialInstance$IntElement;

    const-string v1, "INT3"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/filament/MaterialInstance$IntElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/MaterialInstance$IntElement;->INT3:Lcom/google/android/filament/MaterialInstance$IntElement;

    .line 40
    new-instance v0, Lcom/google/android/filament/MaterialInstance$IntElement;

    const-string v1, "INT4"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/filament/MaterialInstance$IntElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/MaterialInstance$IntElement;->INT4:Lcom/google/android/filament/MaterialInstance$IntElement;

    const/4 v0, 0x4

    .line 36
    new-array v0, v0, [Lcom/google/android/filament/MaterialInstance$IntElement;

    sget-object v1, Lcom/google/android/filament/MaterialInstance$IntElement;->INT:Lcom/google/android/filament/MaterialInstance$IntElement;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/MaterialInstance$IntElement;->INT2:Lcom/google/android/filament/MaterialInstance$IntElement;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/MaterialInstance$IntElement;->INT3:Lcom/google/android/filament/MaterialInstance$IntElement;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/MaterialInstance$IntElement;->INT4:Lcom/google/android/filament/MaterialInstance$IntElement;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/filament/MaterialInstance$IntElement;->$VALUES:[Lcom/google/android/filament/MaterialInstance$IntElement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/MaterialInstance$IntElement;
    .locals 1

    .line 36
    const-class v0, Lcom/google/android/filament/MaterialInstance$IntElement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/MaterialInstance$IntElement;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/MaterialInstance$IntElement;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/android/filament/MaterialInstance$IntElement;->$VALUES:[Lcom/google/android/filament/MaterialInstance$IntElement;

    invoke-virtual {v0}, [Lcom/google/android/filament/MaterialInstance$IntElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/MaterialInstance$IntElement;

    return-object v0
.end method
