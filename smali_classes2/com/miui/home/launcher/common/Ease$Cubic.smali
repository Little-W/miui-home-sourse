.class public Lcom/miui/home/launcher/common/Ease$Cubic;
.super Ljava/lang/Object;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/common/Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cubic"
.end annotation


# static fields
.field public static final easeIn:Landroid/animation/TimeInterpolator;

.field public static final easeInOut:Landroid/animation/TimeInterpolator;

.field public static final easeOut:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/miui/home/launcher/common/Ease$Cubic$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/Ease$Cubic$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    .line 40
    new-instance v0, Lcom/miui/home/launcher/common/Ease$Cubic$2;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/Ease$Cubic$2;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    .line 45
    new-instance v0, Lcom/miui/home/launcher/common/Ease$Cubic$3;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/Ease$Cubic$3;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    return-void
.end method
