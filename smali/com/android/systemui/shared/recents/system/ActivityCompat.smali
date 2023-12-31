.class public Lcom/android/systemui/shared/recents/system/ActivityCompat;
.super Ljava/lang/Object;
.source "ActivityCompat.java"


# instance fields
.field private final mWrapped:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/ActivityCompat;->mWrapped:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public encodeViewHierarchy(Ljava/io/ByteArrayOutputStream;)Z
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityCompat;->mWrapped:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityCompat;->mWrapped:Landroid/app/Activity;

    .line 49
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityCompat;->mWrapped:Landroid/app/Activity;

    .line 50
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityCompat;->mWrapped:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 57
    :cond_1
    new-instance v1, Landroid/view/ViewHierarchyEncoder;

    invoke-direct {v1, p1}, Landroid/view/ViewHierarchyEncoder;-><init>(Ljava/io/ByteArrayOutputStream;)V

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object p1

    .line 59
    aget v0, p1, v0

    const-string/jumbo v2, "window:left"

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const/4 v0, 0x1

    .line 60
    aget p1, p1, v0

    const-string/jumbo v2, "window:top"

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 61
    invoke-virtual {p0, v1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 62
    invoke-virtual {v1}, Landroid/view/ViewHierarchyEncoder;->endStream()V

    return v0
.end method

.method public registerRemoteAnimations(Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;)V
    .locals 0

    .line 39
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;->getWrapped()Landroid/view/RemoteAnimationDefinition;

    move-result-object p1

    invoke-static {p1}, Lmiui/view/RemoteAnimationDefinitionExpose;->box(Ljava/lang/Object;)Lmiui/view/RemoteAnimationDefinitionExpose;

    move-result-object p1

    .line 40
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityCompat;->mWrapped:Landroid/app/Activity;

    invoke-static {p0}, Lmiui/app/ActivityExpose;->box(Ljava/lang/Object;)Lmiui/app/ActivityExpose;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/app/ActivityExpose;->registerRemoteAnimations(Lmiui/view/RemoteAnimationDefinitionExpose;)V

    return-void
.end method
