.class public Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;
.super Ljava/lang/Object;
.source "AppWidgetProviderMeta.java"


# instance fields
.field public isMIUIWidget:Z

.field public minRefreshInterval:I

.field public miuiAutoScale:Z

.field public refreshMode:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;IZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;->isMIUIWidget:Z

    .line 17
    iput-object p2, p0, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;->refreshMode:Ljava/lang/String;

    .line 18
    iput p3, p0, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;->minRefreshInterval:I

    .line 19
    iput-boolean p4, p0, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;->miuiAutoScale:Z

    return-void
.end method
