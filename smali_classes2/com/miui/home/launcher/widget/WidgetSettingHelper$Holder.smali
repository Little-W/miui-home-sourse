.class Lcom/miui/home/launcher/widget/WidgetSettingHelper$Holder;
.super Ljava/lang/Object;
.source "WidgetSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/widget/WidgetSettingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/home/launcher/widget/WidgetSettingHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/widget/WidgetSettingHelper$Holder;->sInstance:Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    return-void
.end method

.method static synthetic access$000()Lcom/miui/home/launcher/widget/WidgetSettingHelper;
    .locals 1

    .line 19
    sget-object v0, Lcom/miui/home/launcher/widget/WidgetSettingHelper$Holder;->sInstance:Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    return-object v0
.end method
