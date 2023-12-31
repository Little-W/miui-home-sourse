.class Lmiuix/popupwidget/widget/GuidePopupWindow$1;
.super Ljava/lang/Object;
.source "GuidePopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/GuidePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/widget/GuidePopupWindow;


# direct methods
.method constructor <init>(Lmiuix/popupwidget/widget/GuidePopupWindow;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow$1;->this$0:Lmiuix/popupwidget/widget/GuidePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 229
    iget-object p0, p0, Lmiuix/popupwidget/widget/GuidePopupWindow$1;->this$0:Lmiuix/popupwidget/widget/GuidePopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/GuidePopupWindow;->dismiss(Z)V

    return-void
.end method
