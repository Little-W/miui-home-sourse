.class final Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/view/ContentInfoCompat$BuilderCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BuilderCompat31Impl"
.end annotation


# instance fields
.field private final mPlatformBuilder:Landroid/view/ContentInfo$Builder;


# direct methods
.method constructor <init>(Landroid/content/ClipData;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/ContentInfo$Builder;

    invoke-direct {v0, p1, p2}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;->mPlatformBuilder:Landroid/view/ContentInfo$Builder;

    return-void
.end method


# virtual methods
.method public build()Landroidx/core/view/ContentInfoCompat;
    .locals 2

    new-instance v0, Landroidx/core/view/ContentInfoCompat;

    new-instance v1, Landroidx/core/view/ContentInfoCompat$Compat31Impl;

    iget-object p0, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;->mPlatformBuilder:Landroid/view/ContentInfo$Builder;

    invoke-virtual {p0}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/core/view/ContentInfoCompat$Compat31Impl;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, Landroidx/core/view/ContentInfoCompat;-><init>(Landroidx/core/view/ContentInfoCompat$Compat;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;->mPlatformBuilder:Landroid/view/ContentInfo$Builder;

    invoke-virtual {p0, p1}, Landroid/view/ContentInfo$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/ContentInfo$Builder;

    return-void
.end method

.method public setFlags(I)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;->mPlatformBuilder:Landroid/view/ContentInfo$Builder;

    invoke-virtual {p0, p1}, Landroid/view/ContentInfo$Builder;->setFlags(I)Landroid/view/ContentInfo$Builder;

    return-void
.end method

.method public setLinkUri(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;->mPlatformBuilder:Landroid/view/ContentInfo$Builder;

    invoke-virtual {p0, p1}, Landroid/view/ContentInfo$Builder;->setLinkUri(Landroid/net/Uri;)Landroid/view/ContentInfo$Builder;

    return-void
.end method
