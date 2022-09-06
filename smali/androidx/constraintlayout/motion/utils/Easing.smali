.class public Landroidx/constraintlayout/motion/utils/Easing;
.super Ljava/lang/Object;
.source "Easing.java"


# static fields
.field public static NAMED_EASING:[Ljava/lang/String;

.field static sDefault:Landroidx/constraintlayout/motion/utils/Easing;


# instance fields
.field str:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    new-instance v0, Landroidx/constraintlayout/motion/utils/Easing;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/Easing;-><init>()V

    sput-object v0, Landroidx/constraintlayout/motion/utils/Easing;->sDefault:Landroidx/constraintlayout/motion/utils/Easing;

    const-string v0, "standard"

    const-string v1, "accelerate"

    const-string v2, "decelerate"

    const-string v3, "linear"

    .line 40
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "identity"

    .line 30
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/Easing;->str:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/Easing;->str:Ljava/lang/String;

    return-object v0
.end method
