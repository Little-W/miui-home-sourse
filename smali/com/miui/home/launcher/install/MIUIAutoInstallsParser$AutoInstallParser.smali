.class Lcom/miui/home/launcher/install/MIUIAutoInstallsParser$AutoInstallParser;
.super Ljava/lang/Object;
.source "MIUIAutoInstallsParser.java"

# interfaces
.implements Lcom/miui/home/launcher/install/MIUIAutoInstallsParser$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoInstallParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser$AutoInstallParser;->this$0:Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;Lcom/miui/home/launcher/install/MIUIAutoInstallsParser$1;)V
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser$AutoInstallParser;-><init>(Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)Z
    .locals 5

    const-string v0, "packageName"

    .line 166
    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;->access$100(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p1, "MIUIAutoInstalls.Parser"

    const-string v0, "Skipping invalid <autoinstall> with no package name."

    .line 168
    return v2

    :cond_0
    const-string v1, "icon"

    .line 171
    invoke-static {p1, v1, v2}, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;->access$200(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 172
    iget-object v4, p0, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser$AutoInstallParser;->this$0:Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;

    invoke-static {v4}, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;->access$300(Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/miui/home/launcher/common/Utilities;->getResourceUri(Landroid/content/res/Resources;I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    const-string v4, "title"

    .line 173
    invoke-static {p1, v4, v2}, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;->access$200(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_2

    .line 174
    iget-object v3, p0, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser$AutoInstallParser;->this$0:Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;

    invoke-static {v3}, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;->access$300(Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/miui/home/launcher/common/Utilities;->getResourceUri(Landroid/content/res/Resources;I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v3}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->addPreinstallPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser$AutoInstallParser;->this$0:Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;

    invoke-static {p1}, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;->access$400(Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "MIUIAutoInstalls.Parser"

    const-string v0, "Skipping invalid <autoinstall> with not in install list."

    .line 177
    return v2

    .line 180
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v3}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->addPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MIUIAutoInstalls.Parser"

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save auto install package:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",icon:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",title:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 p1, 0x1

    return p1
.end method
