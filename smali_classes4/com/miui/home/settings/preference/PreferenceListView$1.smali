.class Lcom/miui/home/settings/preference/PreferenceListView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PreferenceListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/settings/preference/PreferenceListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/preference/PreferenceListView;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/preference/PreferenceListView;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/miui/home/settings/preference/PreferenceListView$1;->this$0:Lcom/miui/home/settings/preference/PreferenceListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/miui/home/settings/preference/PreferenceListView$1;->this$0:Lcom/miui/home/settings/preference/PreferenceListView;

    invoke-static {p0, p1}, Lcom/miui/home/settings/preference/PreferenceListView;->access$000(Lcom/miui/home/settings/preference/PreferenceListView;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/miui/home/settings/preference/PreferenceListView$1;->this$0:Lcom/miui/home/settings/preference/PreferenceListView;

    invoke-static {p0, p1}, Lcom/miui/home/settings/preference/PreferenceListView;->access$000(Lcom/miui/home/settings/preference/PreferenceListView;Landroid/view/MotionEvent;)V

    const/4 p0, 0x0

    return p0
.end method
