.class Lmiuix/preference/DropDownPreference$5;
.super Ljava/lang/Object;
.source "DropDownPreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/DropDownPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/preference/DropDownPreference;


# direct methods
.method constructor <init>(Lmiuix/preference/DropDownPreference;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lmiuix/preference/DropDownPreference$5;->this$0:Lmiuix/preference/DropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 408
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 413
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 414
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 415
    iget-object v0, p0, Lmiuix/preference/DropDownPreference$5;->this$0:Lmiuix/preference/DropDownPreference;

    invoke-static {v0}, Lmiuix/preference/DropDownPreference;->access$400(Lmiuix/preference/DropDownPreference;)Lmiui/external/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/external/widget/Spinner;->performClick(FF)Z

    goto :goto_0

    .line 410
    :pswitch_1
    new-array p2, v2, [Landroid/view/View;

    aput-object p1, p2, v3

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    new-array v0, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p1, p2, v0}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p2, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p2}, Lmiuix/animation/ITouchStyle;->touchDown([Lmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    .line 418
    :cond_0
    new-array p2, v2, [Landroid/view/View;

    aput-object p1, p2, v3

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p2, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p2}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
