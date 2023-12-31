.class public Lcom/miui/home/launcher/common/Ease$Sine;
.super Ljava/lang/Object;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/common/Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sine"
.end annotation


# static fields
.field public static final easeIn:Landroid/animation/TimeInterpolator;

.field public static final easeInOut:Landroid/animation/TimeInterpolator;

.field public static final easeOut:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Lcom/miui/home/launcher/common/Ease$Sine$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/Ease$Sine$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/Ease$Sine;->easeIn:Landroid/animation/TimeInterpolator;

    .line 120
    new-instance v0, Lcom/miui/home/launcher/common/Ease$Sine$2;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/Ease$Sine$2;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/Ease$Sine;->easeOut:Landroid/animation/TimeInterpolator;

    .line 125
    new-instance v0, Lcom/miui/home/launcher/common/Ease$Sine$3;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/Ease$Sine$3;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/Ease$Sine;->easeInOut:Landroid/animation/TimeInterpolator;

    return-void
.end method
