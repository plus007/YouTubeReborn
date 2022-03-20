#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <HBLog.h>
#import <Colours.h>
#import "../Extensions/UIColor+HexString.h"
#import "../Extensions/NSString+HexColor.h"

UIColor* rebornCustomColor;

%group gColourOptions
%hook UIView
- (void)setBackgroundColor:(UIColor*)color {
    if ([self.nextResponder isKindOfClass:NSClassFromString(@"YTPivotBarView")]) {
        color = rebornCustomColor;
    }
    if ([self.nextResponder isKindOfClass:NSClassFromString(@"YTSlideForActionsView")]) {
        color = rebornCustomColor;
    }
    if ([self.nextResponder isKindOfClass:NSClassFromString(@"YTChipCloudCell")]) {
        color = rebornCustomColor;
    }
    if ([self.nextResponder isKindOfClass:NSClassFromString(@"YTEngagementPanelView")]) {
        color = rebornCustomColor;
    }
    if ([self.nextResponder isKindOfClass:NSClassFromString(@"YTPlaylistPanelProminentThumbnailVideoCell")]) {
        color = rebornCustomColor;
    }
    if ([self.nextResponder isKindOfClass:NSClassFromString(@"YTPlaylistHeaderView")]) {
        color = rebornCustomColor;
    }
    if ([self.nextResponder isKindOfClass:NSClassFromString(@"YTAsyncCollectionView")]) {
        color = rebornCustomColor;
    }
    if ([self.nextResponder isKindOfClass:NSClassFromString(@"YTLinkCell")]) {
        color = rebornCustomColor;
    }
    if ([self.nextResponder isKindOfClass:NSClassFromString(@"YTMessageCell")]) {
        color = rebornCustomColor;
    }
    if ([self.nextResponder isKindOfClass:NSClassFromString(@"YTSearchView")]) {
        color = rebornCustomColor;
    }
    if ([self.nextResponder isKindOfClass:NSClassFromString(@"YTDrawerAvatarCell")]) {
        color = rebornCustomColor;
    }
    if ([self.nextResponder isKindOfClass:NSClassFromString(@"YTFeedHeaderView")]) {
        color = rebornCustomColor;
    }
    if ([self.nextResponder isKindOfClass:NSClassFromString(@"YCHLiveChatTextCell")]) {
        color = rebornCustomColor;
    }
    if ([self.nextResponder isKindOfClass:NSClassFromString(@"YCHLiveChatViewerEngagementCell")]) {
        color = rebornCustomColor;
    }
    if ([self.nextResponder isKindOfClass:NSClassFromString(@"YTCommentsHeaderView")]) {
        color = rebornCustomColor;
    }
    if ([self.nextResponder isKindOfClass:NSClassFromString(@"YCHLiveChatView")]) {
        color = rebornCustomColor;
    }
    if ([self.nextResponder isKindOfClass:NSClassFromString(@"YCHLiveChatTickerViewController")]) {
        color = rebornCustomColor;
    }
    %orig;
}
- (void)layoutSubviews {
    %orig();
    if ([self.nextResponder isKindOfClass:NSClassFromString(@"_ASDisplayView")]) {
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.0];
    }
}
%end
%hook YTAsyncCollectionView
- (void)setBackgroundColor:(UIColor*)color {
    if ([self.nextResponder isKindOfClass:NSClassFromString(@"YTRelatedVideosCollectionViewController")]) {
        color = [[UIColor blackColor] colorWithAlphaComponent:0.0];
    } else if ([self.nextResponder
                   isKindOfClass:NSClassFromString(@"YTFullscreenMetadataHighlightsCollectionViewController")]) {
        color = [[UIColor blackColor] colorWithAlphaComponent:0.0];
    } else {
        color = rebornCustomColor;
    }
    %orig;
}
%end
%hook YTPivotBarView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTHeaderView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTSubheaderContainerView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTAppView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTChannelListSubMenuView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTSlideForActionsView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTPageView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTWatchView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTPlaylistMiniBarView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTEngagementPanelHeaderView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTPlaylistPanelControlsView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTHorizontalCardListView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTWatchMiniBarView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTCreateCommentAccessoryView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTCreateCommentTextView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTSearchView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTVideoView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTSearchBoxView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTTabTitlesView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTPrivacyTosFooterView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTOfflineStorageUsageView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTInlineSignInView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTFeedChannelFilterHeaderView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YCHLiveChatView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YCHLiveChatActionPanelView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTEmojiTextView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTTopAlignedView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
- (void)layoutSubviews {
    %orig();
    MSHookIvar<YTTopAlignedView*>(self, "_contentView").backgroundColor = rebornCustomColor;
}
%end
%hook GOODialogView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTNavigationBar
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
- (void)setBarTintColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTChannelMobileHeaderView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTChannelSubMenuView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTWrapperSplitView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTReelShelfCell
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTReelShelfItemView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTReelShelfView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YTCommentView
- (void)setBackgroundColor:(UIColor*)color {
    color = rebornCustomColor;
    %orig;
}
%end
%hook YCHLiveChatBannerCell
- (void)layoutSubviews {
    %orig();
    MSHookIvar<UIImageView*>(self, "_bannerContainerImageView").hidden = YES;
    MSHookIvar<UIView*>(self, "_bannerContainerView").backgroundColor = rebornCustomColor;
}
%end
%hook YTSearchSuggestionCollectionViewCell
- (void)updateColors {
}
%end
%end

%ctor {
    @autoreleasepool {
        NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
        [defaults registerDefaults:@{
            // Color options
            @"kYTRebornColourOptionsV3" : @"",
        }];
        
        // Transitioning from legacy colors
        NSData* colorData = [defaults objectForKey:@"kYTRebornColourOptionsVTwo"];
        if ([colorData length]) {
            NSKeyedUnarchiver* unarchiver = [[NSKeyedUnarchiver alloc] initForReadingFromData:colorData error:nil];
            [unarchiver setRequiresSecureCoding:NO];
            NSString* legacyHexString = [unarchiver decodeObjectForKey:NSKeyedArchiveRootObjectKey];
            if (legacyHexString != nil) {
                NSLog(@"[YouTube Reborn] Found legacy color preference kYTRebornColourOptionsVTwo: %@", legacyHexString);
                UIColor* color = [unarchiver decodeObjectForKey:NSKeyedArchiveRootObjectKey];
                [defaults setObject:[NSString hexStringFromColor:color] forKey:@"kYTRebornColourOptionsV3"];
                NSLog(@"[YouTube Reborn] Converted legacy color to kYTRebornColourOptionsV3: %@", [defaults objectForKey:@"kYTRebornColourOptionsV3"]);
                [defaults removeObjectForKey:@"kYTRebornColourOptionsVTwo"];
                [defaults synchronize];
            }
        } 
        
        if ([[defaults stringForKey:@"kYTRebornColourOptionsV3"] length]) {
            rebornCustomColor = [UIColor rebornColorFromHexString:[defaults stringForKey:@"kYTRebornColourOptionsV3"]];
            NSLog(@"[YouTube Reborn] Applying color %@", rebornCustomColor);
            %init(gColourOptions);
        }
    }
}
