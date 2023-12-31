.class Lcom/miui/home/launcher/AppIcon$1;
.super Lcom/miui/home/launcher/util/noword/NoWordItemIconAdapter;
.source "AppIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/AppIcon;->initNoWordAdapter()Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/AppIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/AppIcon;Lcom/miui/home/launcher/ItemIcon;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/miui/home/launcher/AppIcon$1;->this$0:Lcom/miui/home/launcher/AppIcon;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/util/noword/NoWordItemIconAdapter;-><init>(Lcom/miui/home/launcher/ItemIcon;)V

    return-void
.end method


# virtual methods
.method public iconView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
