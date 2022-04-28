.class public Lcom/miui/home/launcher/compat/AccessibilityManagerCompat;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompat.java"


# direct methods
.method private static getManager(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    const-string v0, "accessibility"

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method public static isAccessibilityEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/miui/home/launcher/compat/AccessibilityManagerCompat;->getManager(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public static isObservedEventType(Landroid/content/Context;I)Z
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/miui/home/launcher/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V
    .locals 1

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/home/launcher/compat/AccessibilityManagerCompat;->isObservedEventType(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 39
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/compat/AccessibilityManagerCompat;->getManager(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method
