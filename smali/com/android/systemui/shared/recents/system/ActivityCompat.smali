.class public Lcom/android/systemui/shared/recents/system/ActivityCompat;
.super Ljava/lang/Object;
.source "ActivityCompat.java"


# instance fields
.field private final mWrapped:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/ActivityCompat;->mWrapped:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public encodeViewHierarchy(Ljava/io/ByteArrayOutputStream;)Z
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityCompat;->mWrapped:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityCompat;->mWrapped:Landroid/app/Activity;

    .line 45
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityCompat;->mWrapped:Landroid/app/Activity;

    .line 46
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityCompat;->mWrapped:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 53
    :cond_1
    new-instance v2, Landroid/view/ViewHierarchyEncoder;

    invoke-direct {v2, p1}, Landroid/view/ViewHierarchyEncoder;-><init>(Ljava/io/ByteArrayOutputStream;)V

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object p1

    const-string v3, "window:left"

    .line 55
    aget v1, p1, v1

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v1, "window:top"

    const/4 v3, 0x1

    .line 56
    aget p1, p1, v3

    invoke-virtual {v2, v1, p1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 57
    invoke-virtual {v0, v2}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 58
    invoke-virtual {v2}, Landroid/view/ViewHierarchyEncoder;->endStream()V

    return v3
.end method

.method public registerRemoteAnimations(Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityCompat;->mWrapped:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;->getWrapped()Landroid/view/RemoteAnimationDefinition;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    return-void
.end method
