.class public Lcom/miui/home/launcher/install/AutoInstallsLayout$GadgetParser;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/install/AutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GadgetParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;


# direct methods
.method protected constructor <init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$GadgetParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "gadgetName"

    .line 853
    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 854
    iget-object v1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$GadgetParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-static {v1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$800(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Landroid/appwidget/AppWidgetHost;

    move-result-object v1

    invoke-static {p1, p2, p3, v0, v1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$1400(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Landroid/appwidget/AppWidgetHost;)J

    move-result-wide p1

    return-wide p1
.end method
