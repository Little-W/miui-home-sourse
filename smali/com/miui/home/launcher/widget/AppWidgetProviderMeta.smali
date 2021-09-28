.class public Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;
.super Ljava/lang/Object;
.source "AppWidgetProviderMeta.java"


# instance fields
.field public isMIUIWidget:Z

.field public minRefreshInterval:I

.field public refreshMode:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;->isMIUIWidget:Z

    .line 10
    iput-object p2, p0, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;->refreshMode:Ljava/lang/String;

    .line 11
    iput p3, p0, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;->minRefreshInterval:I

    return-void
.end method
