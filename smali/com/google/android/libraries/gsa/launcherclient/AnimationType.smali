.class public final enum Lcom/google/android/libraries/gsa/launcherclient/AnimationType;
.super Ljava/lang/Enum;
.source "AnimationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/gsa/launcherclient/AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FADE:Lcom/google/android/libraries/gsa/launcherclient/AnimationType;

.field public static final enum NONE:Lcom/google/android/libraries/gsa/launcherclient/AnimationType;

.field public static final enum SLIDE:Lcom/google/android/libraries/gsa/launcherclient/AnimationType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/AnimationType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/libraries/gsa/launcherclient/AnimationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/gsa/launcherclient/AnimationType;->NONE:Lcom/google/android/libraries/gsa/launcherclient/AnimationType;

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/AnimationType;

    const-string v1, "SLIDE"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/libraries/gsa/launcherclient/AnimationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/gsa/launcherclient/AnimationType;->SLIDE:Lcom/google/android/libraries/gsa/launcherclient/AnimationType;

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/AnimationType;

    const-string v1, "FADE"

    const/4 v4, 0x3

    const/4 v5, 0x2

    .line 3
    invoke-direct {v0, v1, v5, v4}, Lcom/google/android/libraries/gsa/launcherclient/AnimationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/gsa/launcherclient/AnimationType;->FADE:Lcom/google/android/libraries/gsa/launcherclient/AnimationType;

    new-array v0, v4, [Lcom/google/android/libraries/gsa/launcherclient/AnimationType;

    sget-object v1, Lcom/google/android/libraries/gsa/launcherclient/AnimationType;->NONE:Lcom/google/android/libraries/gsa/launcherclient/AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/gsa/launcherclient/AnimationType;->SLIDE:Lcom/google/android/libraries/gsa/launcherclient/AnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/libraries/gsa/launcherclient/AnimationType;->FADE:Lcom/google/android/libraries/gsa/launcherclient/AnimationType;

    aput-object v1, v0, v5

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/libraries/gsa/launcherclient/AnimationType;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/AnimationType;->a:I

    return v0
.end method
