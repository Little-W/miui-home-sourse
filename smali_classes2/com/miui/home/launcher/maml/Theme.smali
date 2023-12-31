.class public interface abstract Lcom/miui/home/launcher/maml/Theme;
.super Ljava/lang/Object;
.source "Theme.java"


# virtual methods
.method public abstract accept(Ljava/lang/String;)Z
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getTitleStyle()I
.end method

.method public getWidgetPadding()Landroid/graphics/Rect;
    .locals 1

    .line 43
    new-instance p0, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public abstract handle(Lcom/miui/home/launcher/maml/ThemeSupport;Ljava/lang/String;)V
.end method

.method public abstract name()Ljava/lang/String;
.end method
