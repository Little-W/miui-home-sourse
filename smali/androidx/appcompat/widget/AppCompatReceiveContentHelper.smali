.class final Landroidx/appcompat/widget/AppCompatReceiveContentHelper;
.super Ljava/lang/Object;
.source "AppCompatReceiveContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatReceiveContentHelper$OnDropApi24Impl;
    }
.end annotation


# direct methods
.method static maybeHandleDragEventViaPerformReceiveContent(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_6

    .line 87
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 88
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOnReceiveContentMimeTypes(Landroid/view/View;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    invoke-static {p0}, Landroidx/appcompat/widget/AppCompatReceiveContentHelper;->tryGetActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "ReceiveContent"

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t handle drop: no activity: view="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 100
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 106
    instance-of p0, p0, Landroid/widget/TextView;

    if-nez p0, :cond_2

    move v1, v3

    :cond_2
    return v1

    .line 108
    :cond_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 109
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 110
    check-cast p0, Landroid/widget/TextView;

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/AppCompatReceiveContentHelper$OnDropApi24Impl;->onDropForTextView(Landroid/view/DragEvent;Landroid/widget/TextView;Landroid/app/Activity;)Z

    move-result p0

    goto :goto_0

    .line 111
    :cond_4
    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/AppCompatReceiveContentHelper$OnDropApi24Impl;->onDropForView(Landroid/view/DragEvent;Landroid/view/View;Landroid/app/Activity;)Z

    move-result p0

    :goto_0
    return p0

    :cond_5
    return v1

    :cond_6
    :goto_1
    return v1
.end method

.method static maybeHandleMenuActionViaPerformReceiveContent(Landroid/widget/TextView;I)Z
    .locals 5

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_4

    .line 60
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOnReceiveContentMimeTypes(Landroid/view/View;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const v0, 0x1020022

    if-eq p1, v0, :cond_0

    const v2, 0x1020031

    if-eq p1, v2, :cond_0

    goto :goto_2

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 67
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 68
    new-instance v4, Landroidx/core/view/ContentInfoCompat$Builder;

    invoke-direct {v4, v2, v3}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroid/content/ClipData;I)V

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 69
    :goto_1
    invoke-virtual {v4, v1}, Landroidx/core/view/ContentInfoCompat$Builder;->setFlags(I)Landroidx/core/view/ContentInfoCompat$Builder;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object p1

    .line 71
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    :cond_3
    return v3

    :cond_4
    :goto_2
    return v1
.end method

.method static tryGetActivity(Landroid/view/View;)Landroid/app/Activity;
    .locals 1

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 159
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 160
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 161
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 163
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method