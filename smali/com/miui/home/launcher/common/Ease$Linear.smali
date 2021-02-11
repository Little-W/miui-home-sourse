.class public Lcom/miui/home/launcher/common/Ease$Linear;
.super Ljava/lang/Object;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/common/Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Linear"
.end annotation


# static fields
.field public static final easeNone:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/miui/home/launcher/common/Ease$Linear$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/Ease$Linear$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/Ease$Linear;->easeNone:Landroid/animation/TimeInterpolator;

    return-void
.end method
