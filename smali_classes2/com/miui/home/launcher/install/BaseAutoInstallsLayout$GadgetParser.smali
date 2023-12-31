.class public Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$GadgetParser;
.super Ljava/lang/Object;
.source "BaseAutoInstallsLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GadgetParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;


# direct methods
.method protected constructor <init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)V
    .locals 0

    .line 946
    iput-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$GadgetParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "gadgetName"

    .line 949
    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 950
    iget-object p0, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$GadgetParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-static {p0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$600(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)Landroid/appwidget/AppWidgetHost;

    move-result-object p0

    invoke-static {p1, p2, p3, v0, p0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$1100(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Landroid/appwidget/AppWidgetHost;)J

    move-result-wide p0

    return-wide p0
.end method
