.class Lcom/miui/home/launcher/allapps/category/CategoryNavigator$1;
.super Landroid/database/DataSetObserver;
.source "CategoryNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/category/CategoryNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/category/CategoryNavigator;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/category/CategoryNavigator;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/CategoryNavigator$1;->this$0:Lcom/miui/home/launcher/allapps/category/CategoryNavigator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/CategoryNavigator$1;->this$0:Lcom/miui/home/launcher/allapps/category/CategoryNavigator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;->getAdapter()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;->access$000(Lcom/miui/home/launcher/allapps/category/CategoryNavigator;Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    return-void
.end method
