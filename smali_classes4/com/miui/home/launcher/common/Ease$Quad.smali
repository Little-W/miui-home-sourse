.class public Lcom/miui/home/launcher/common/Ease$Quad;
.super Ljava/lang/Object;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/common/Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Quad"
.end annotation


# static fields
.field public static final easeIn:Landroid/animation/TimeInterpolator;

.field public static final easeInOut:Landroid/animation/TimeInterpolator;

.field public static final easeOut:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/miui/home/launcher/common/Ease$Quad$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/Ease$Quad$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/Ease$Quad;->easeIn:Landroid/animation/TimeInterpolator;

    .line 60
    new-instance v0, Lcom/miui/home/launcher/common/Ease$Quad$2;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/Ease$Quad$2;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    .line 65
    new-instance v0, Lcom/miui/home/launcher/common/Ease$Quad$3;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/Ease$Quad$3;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/Ease$Quad;->easeInOut:Landroid/animation/TimeInterpolator;

    return-void
.end method
